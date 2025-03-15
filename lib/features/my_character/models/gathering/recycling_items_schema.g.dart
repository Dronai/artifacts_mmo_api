// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recycling_items_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecyclingItemsSchema _$RecyclingItemsSchemaFromJson(
  Map<String, dynamic> json,
) => RecyclingItemsSchema(
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => DropSchema.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$RecyclingItemsSchemaToJson(
  RecyclingItemsSchema instance,
) => <String, dynamic>{'items': instance.items};
