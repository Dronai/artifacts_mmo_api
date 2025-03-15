// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_item_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleItemSchema _$SimpleItemSchemaFromJson(Map<String, dynamic> json) =>
    SimpleItemSchema(
      code: json['code'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$SimpleItemSchemaToJson(SimpleItemSchema instance) =>
    <String, dynamic>{'code': instance.code, 'quantity': instance.quantity};
