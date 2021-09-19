import 'package:json_annotation/json_annotation.dart';

part 'array_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ArrayResponse<T> {
  @JsonKey(defaultValue: 1)
  final int? page;
  @JsonKey(defaultValue: 0)
  final int? pageSize;
  @JsonKey(name: "total_pages", defaultValue: 0)
  final int? totalPages;
  @JsonKey(defaultValue: [])
  final List<T>? results;

  ArrayResponse({
    this.page,
    this.pageSize,
    this.totalPages,
    this.results,
  });

  factory ArrayResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ArrayResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$ArrayResponseToJson(this, toJsonT);
}
