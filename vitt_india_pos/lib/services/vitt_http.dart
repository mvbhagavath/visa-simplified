import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vitt_india_pos/core/constants/url_consts.dart';
import 'package:vitt_india_pos/core/utils/utils.dart' as utils;
import 'package:vitt_india_pos/core/constants/const.dart';
import 'package:vitt_india_pos/dependency_injection.dart';
import 'package:vitt_india_pos/services/refresh_interceptor.dart';

class VittHttp {
  PrettyDioLogger get _logger => PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
      );

  Dio? unAuthDio;
  Dio? authDio;

  Dio _constructDioObject(String baseUrl, {bool isUnAuth = false}) {
    if (isUnAuth && unAuthDio != null) return unAuthDio!;
    if (!isUnAuth && authDio != null) return authDio!;
    final _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: scConnectionTimeout,
      receiveTimeout: scReceiveTimeout,
    ));

    return isUnAuth ? unAuthDio = _dio : authDio = _dio;
  }

  Future<Dio?> unAuthorizedDioObject() async {
    final deviceId = await utils.getDeviceId();
    _constructDioObject(baseUrl, isUnAuth: true);
    final String appLocale =
        sl<SharedPreferences>().getString(currentAppLocale) ?? 'en';
    final Map<String, String> additionalHeaders = {
      vittDeviceId: deviceId,
      vittAppFlavour: Platform.isIOS ? "IOS" : "Android",
      vittLangId: appLocale,
      vittClientId: "mobile"
    };
    unAuthDio?.options.headers.addAll(additionalHeaders);
    unAuthDio?.interceptors.clear();
    unAuthDio?.interceptors.add(_logger);
    unAuthDio?.interceptors.add(RefreshTokenInterceptor());
    return unAuthDio;
  }

  Future<Dio?> authorizedDioObject() async {
    final deviceId = await utils.getDeviceId();
    _constructDioObject(baseUrl);
    final String appLocale =
        sl<SharedPreferences>().getString(currentAppLocale) ?? 'en';
    final additionalHeaders = <String, String>{
      authorizationConst:
          "Bearer ${sl<SharedPreferences>().getString(accessTokenSharedPref)!}",
      vittDeviceId: deviceId,
      vittAppFlavour: Platform.isIOS ? "IOS" : "Android",
      vittLangId: appLocale,
      vittClientId: "mobile",
    };
    authDio?.options.headers
        .addAll(additionalHeaders); // add latest token to dio.
    authDio?.interceptors.clear();
    authDio?.interceptors.add(_logger);
    authDio?.interceptors.add(RefreshTokenInterceptor());
    return authDio;
  }
}
