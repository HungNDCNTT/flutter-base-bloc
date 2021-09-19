// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenEntity _$TokenEntityFromJson(Map<String, dynamic> json) {
  return TokenEntity(
    accessToken: json['accessToken'] as String?,
    refreshToken: json['refresh_token'] as String?,
  );
}

Map<String, dynamic> _$TokenEntityToJson(TokenEntity instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
