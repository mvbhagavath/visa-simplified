import 'package:json_annotation/json_annotation.dart';
import 'package:vitt_india_pos/services/refresh_token/models/response/access_token_data.dart';

part 'refresh_token_data.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class RefreshTokenData {
  RefreshTokenData({this.accessTokenData});

  factory RefreshTokenData.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenDataFromJson(json);

  AccessTokenData? accessTokenData;

  Map<String, dynamic> toJson() => _$RefreshTokenDataToJson(this);
}
