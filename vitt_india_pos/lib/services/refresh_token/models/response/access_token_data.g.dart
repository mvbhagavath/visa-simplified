// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessTokenData _$AccessTokenDataFromJson(Map<String, dynamic> json) =>
    AccessTokenData(
      token: json['token'] as String?,
      expiresAt: json['expires_at'] as int?,
    );

Map<String, dynamic> _$AccessTokenDataToJson(AccessTokenData instance) =>
    <String, dynamic>{
      'expires_at': instance.expiresAt,
      'token': instance.token,
    };
