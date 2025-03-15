// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drop_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DropSchema _$DropSchemaFromJson(Map<String, dynamic> json) => DropSchema(
  code: json['code'] as String,
  quantity: (json['quantity'] as num).toInt(),
);

Map<String, dynamic> _$DropSchemaToJson(DropSchema instance) =>
    <String, dynamic>{'code': instance.code, 'quantity': instance.quantity};
