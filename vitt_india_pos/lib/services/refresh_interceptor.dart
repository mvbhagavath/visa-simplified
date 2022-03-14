import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vitt_india_pos/core/constants/const.dart';
import 'package:vitt_india_pos/core/constants/url_consts.dart';
import 'package:vitt_india_pos/dependency_injection.dart';
import 'package:vitt_india_pos/services/refresh_token/datasource/refresh_token_datasource.dart';

class RefreshTokenInterceptor extends Interceptor {
  bool _isTokenExpired(String? token) =>
      token != null && JwtDecoder.isExpired(token);

  Future<void> _lockRequests() async {
    log('Refreshing Token, Locking interceptors. [This should be called once]');
    final dioObject = (await scHttp.authorizedDioObject())!;
    dioObject.lock();
    dioObject.interceptors.requestLock.lock();
    dioObject.interceptors.responseLock.lock();
    dioObject.interceptors.errorLock.lock();
  }

  Future<void> _unLockRequests([String? msg]) async {
    log(msg ??
        'Token refreshed, UnLocking interceptors. [This should be called once]');
    final dioObject = (await scHttp.authorizedDioObject())!;
    dioObject.unlock();
    dioObject.interceptors.requestLock.unlock();
    dioObject.interceptors.responseLock.unlock();
    dioObject.interceptors.errorLock.unlock();
  }

  void _rejectError(
      RequestOptions options, RequestInterceptorHandler handler, String error) {
    handler.reject(DioError(requestOptions: options, error: error));
  }

  Future<void> _refreshToken({
    required void Function() onRefresh,
    required void Function() onExpiry,
    required void Function(String challenge) onChallenge,
  }) async {
    final response = await sl<RefreshTokenDataSource>().refreshToken();

    if (response) {
      const key = authorizationConst;
      final String accessToken =
          sl<SharedPreferences>().getString(accessTokenSharedPref)!;
      scHttp.authDio?.options.headers[key] = "Bearer $accessToken";
      await _unLockRequests();
      onRefresh();
    } else {
      onExpiry.call();
    }
  }

  Future<void> _goToSplashScreen() async {
    (await scHttp.authorizedDioObject())!.clear();
    await _unLockRequests('Refresh Token Expired, Going to SignIn.');
    sl<SharedPreferences>().clear().then((_) async {
      // try {
      //   await sl<SignOutDataSource>().logoutUser();
      // } catch (e, s) {
      //   sl<FirebaseCrashlytics>().recordError(e, s);
      // }
      // Get.offAll(() => const SplashScreen());
    });
  }

  @override
  Future<void> onError(
    DioError error,
    ErrorInterceptorHandler handler,
  ) async {
    if (error.response?.statusCode == 401) {
      final options = error.response!.requestOptions;
      final String accessToken =
          "Bearer ${sl<SharedPreferences>().getString(accessTokenSharedPref)!}";
      // If the token has been updated, repeat directly.

      if (accessToken != options.headers[authorizationConst]) {
        options.headers[authorizationConst] = accessToken;
        //repeat
        (await scHttp.authorizedDioObject())!.fetch(options).then(
          (r) => handler.resolve(r),
          onError: (e) {
            handler.reject(DioError(error: e, requestOptions: options));
          },
        );
        return;
      }
      // update token and repeat
      // Lock to block the incoming request until the token is updated
      await _lockRequests();
      final response = await sl<RefreshTokenDataSource>().refreshToken();
      if (response) {
        final String accessToken =
            sl<SharedPreferences>().getString(accessTokenSharedPref)!;
        final newAccessTokenHeader = "Bearer $accessToken";
        scHttp.authDio?.options.headers[authorizationConst] =
            newAccessTokenHeader;
        options.headers[authorizationConst] = newAccessTokenHeader;

        await _unLockRequests();
        (await scHttp.authorizedDioObject())!.fetch(options).then(
          (r) => handler.resolve(r),
          onError: (e) {
            handler.reject(DioError(error: e, requestOptions: options));
          },
        );
      } else {
        _goToSplashScreen();
      }
      return handler.next(error);
    }
    return handler.next(error);
  }

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    //Work around to ignore requests for login API's
    final ignoreReq = options.path.contains(requestOtpUrl) ||
        options.path.contains(refreshTokenUrl) ||
        options.path.contains(verifyUserUrl);
    if (!ignoreReq) {
      final accessToken =
          sl<SharedPreferences>().getString(accessTokenSharedPref)!;

      if (_isTokenExpired(accessToken)) {
        const rError = 'Refresh token expired';
        await _lockRequests();
        await _refreshToken(
          onRefresh: () {
            options.headers[authorizationConst] =
                "Bearer ${sl<SharedPreferences>().getString(accessTokenSharedPref)!}";
            return super.onRequest(options, handler);
          },
          onChallenge: (error) => _rejectError(options, handler, error),
          onExpiry: () {
            _rejectError(options, handler, rError);
            _goToSplashScreen();
          },
        );
        return;
      }
    }
    const key = authorizationConst;
    if (options.headers.containsKey(key)) {
      options.headers[key] =
          "Bearer ${sl<SharedPreferences>().getString(accessTokenSharedPref)!}";
    }
    super.onRequest(options, handler);
  }
}
