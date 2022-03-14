import 'package:json_annotation/json_annotation.dart';
import 'package:vitt_india_pos/services/refresh_token/models/response/refresh_token_data.dart';

part 'refresh_token_response.g.dart';

@JsonSerializable()
class RefreshTokenResponse {
  RefreshTokenResponse({this.status, this.error, this.data});

  factory RefreshTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenResponseFromJson(json);

  RefreshTokenData? data;
  String? error;
  bool? status;

  Map<String, dynamic> toJson() => _$RefreshTokenResponseToJson(this);
}
