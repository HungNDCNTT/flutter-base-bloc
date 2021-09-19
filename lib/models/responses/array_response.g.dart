// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'array_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArrayResponse<T> _$ArrayResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) {
  return ArrayResponse<T>(
    page: json['page'] as int? ?? 1,
    pageSize: json['pageSize'] as int? ?? 0,
    totalPages: json['total_pages'] as int? ?? 0,
    results: (json['results'] as List<dynamic>?)?.map(fromJsonT).toList() ?? [],
  );
}

Map<String, dynamic> _$ArrayResponseToJson<T>(
  ArrayResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'total_pages': instance.totalPages,
      'results': instance.results?.map(toJsonT).toList(),
    };
