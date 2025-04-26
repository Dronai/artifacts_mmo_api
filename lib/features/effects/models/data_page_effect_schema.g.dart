// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_page_effect_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataPageEffectSchema _$DataPageEffectSchemaFromJson(
  Map<String, dynamic> json,
) => DataPageEffectSchema(
  data:
      (json['data'] as List<dynamic>)
          .map((e) => EffectSchema.fromJson(e as Map<String, dynamic>))
          .toList(),
  total: (json['total'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  size: (json['size'] as num).toInt(),
  pages: (json['pages'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$DataPageEffectSchemaToJson(
  DataPageEffectSchema instance,
) => <String, dynamic>{
  'data': instance.data,
  'total': instance.total,
  'page': instance.page,
  'size': instance.size,
  'pages': instance.pages,
};
