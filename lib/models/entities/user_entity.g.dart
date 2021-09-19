// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) {
  return UserEntity(
    id: json['id'] as int?,
    username: json['username'] as String?,
    birthday: json['birthday'] == null
        ? null
        : DateTime.parse(json['birthday'] as String),
    avatarUrl: json['avatarUrl'] as String?,
  );
}

Map<String, dynamic> _$UserEntityToJson(UserEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'birthday': instance.birthday?.toIso8601String(),
      'avatarUrl': instance.avatarUrl,
    };
