// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefreshTokenData _$RefreshTokenDataFromJson(Map<String, dynamic> json) =>
    RefreshTokenData(
      accessTokenData: json['access_token_data'] == null
          ? null
          : AccessTokenData.fromJson(
              json['access_token_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RefreshTokenDataToJson(RefreshTokenData instance) =>
    <String, dynamic>{
      'access_token_data': instance.accessTokenData,
    };
