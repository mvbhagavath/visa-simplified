import 'package:shared_preferences/shared_preferences.dart';
import 'package:vitt_india_pos/core/constants/const.dart';
import 'package:vitt_india_pos/core/utils/token_storage/token_dao.dart';
import 'package:vitt_india_pos/dependency_injection.dart';
import 'package:vitt_india_pos/services/refresh_token/models/request/refresh_token_request.dart';
import 'package:vitt_india_pos/services/vitt_app_client.dart';

abstract class RefreshTokenDataSource {
  Future<bool> refreshToken();
}

class RefreshTokenDataSourceImpl extends RefreshTokenDataSource {
  @override
  Future<bool> refreshToken() async {
    final dioObject = await scHttp.unAuthorizedDioObject();
    final VittAppClient refreshTokenClient = VittAppClient(dioObject!);
    try {
      final sharedPreference = sl<SharedPreferences>();
      final tokenDao = sl<TokenDao>();
      final storedRefreshToken = await tokenDao.getRefreshToken();
      final refreshTokenResponse = await refreshTokenClient
          .refreshToken(RefreshTokenRequest(refreshToken: storedRefreshToken));
      if (refreshTokenResponse.status != null &&
          refreshTokenResponse.status! &&
          refreshTokenResponse.data != null) {
        final accessTokenData = refreshTokenResponse.data!.accessTokenData;
        if (accessTokenData != null && accessTokenData.token != null) {
          await sharedPreference.setString(
              accessTokenSharedPref, accessTokenData.token!);
          return true;
        }
      }
      return false;
    } catch (e) {
      return false;
    }
  }
}
