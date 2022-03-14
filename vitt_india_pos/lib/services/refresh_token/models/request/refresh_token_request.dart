import 'package:json_annotation/json_annotation.dart';

part 'refresh_token_request.g.dart';

@JsonSerializable()
class RefreshTokenRequest {
  RefreshTokenRequest({this.refreshToken});

  factory RefreshTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenRequestFromJson(json);

  @JsonKey(name: "refresh_token")
  String? refreshToken;

  Map<String, dynamic> toJson() => _$RefreshTokenRequestToJson(this);
}
