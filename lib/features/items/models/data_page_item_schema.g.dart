// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_page_item_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataPageItemSchema _$DataPageItemSchemaFromJson(Map<String, dynamic> json) =>
    DataPageItemSchema(
      data:
          (json['data'] as List<dynamic>)
              .map((e) => ItemSchema.fromJson(e as Map<String, dynamic>))
              .toList(),
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      pages: (json['pages'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$DataPageItemSchemaToJson(DataPageItemSchema instance) =>
    <String, dynamic>{
      'data': instance.data,
      'total': instance.total,
      'page': instance.page,
      'size': instance.size,
      'pages': instance.pages,
    };
