// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_page_resource_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataPageResourceSchema _$DataPageResourceSchemaFromJson(
  Map<String, dynamic> json,
) => DataPageResourceSchema(
  data:
      (json['data'] as List<dynamic>)
          .map((e) => ResourceSchema.fromJson(e as Map<String, dynamic>))
          .toList(),
  total: (json['total'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  size: (json['size'] as num).toInt(),
  pages: (json['pages'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$DataPageResourceSchemaToJson(
  DataPageResourceSchema instance,
) => <String, dynamic>{
  'data': instance.data,
  'total': instance.total,
  'page': instance.page,
  'size': instance.size,
  'pages': instance.pages,
};
