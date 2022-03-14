import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:vitt_india_pos/core/constants/url_consts.dart';
import 'package:vitt_india_pos/services/refresh_token/models/request/refresh_token_request.dart';
import 'package:vitt_india_pos/services/refresh_token/models/response/refresh_token_response.dart';

part 'vitt_app_client.g.dart';

@RestApi()
abstract class VittAppClient {
  factory VittAppClient(Dio dio, {String baseUrl}) = _VittAppClient;

  // @POST(requestOtpUrl)
  // Future<GenericResponseModel<RequestOtpData>> requestOtp(
  //   @Body() RequestOtpRequest requestOtpRequest,
  // );

  // @POST(verifyUserUrl)
  // Future<GenericResponseModel<VerifyUserResponseData>> verifyUser(
  //   @Body() VerifyUserRequest verifyUserRequest,
  // );

  @POST(refreshTokenUrl)
  Future<RefreshTokenResponse> refreshToken(
    @Body() RefreshTokenRequest refreshTokenRequest,
  );
}
