import 'package:json_annotation/json_annotation.dart';

part 'access_token_data.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AccessTokenData {
  AccessTokenData({this.token, this.expiresAt});

  factory AccessTokenData.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenDataFromJson(json);

  int? expiresAt;

  String? token;

  Map<String, dynamic> toJson() => _$AccessTokenDataToJson(this);
}
