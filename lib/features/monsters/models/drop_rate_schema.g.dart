// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drop_rate_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DropRateSchema _$DropRateSchemaFromJson(Map<String, dynamic> json) =>
    DropRateSchema(
      code: json['code'] as String,
      rate: (json['rate'] as num).toInt(),
      minQuantity: (json['min_quantity'] as num).toInt(),
      maxQuantity: (json['max_quantity'] as num).toInt(),
    );

Map<String, dynamic> _$DropRateSchemaToJson(DropRateSchema instance) =>
    <String, dynamic>{
      'code': instance.code,
      'rate': instance.rate,
      'min_quantity': instance.minQuantity,
      'max_quantity': instance.maxQuantity,
    };
