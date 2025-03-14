// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_movement_response_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterMovementResponseSchema _$CharacterMovementResponseSchemaFromJson(
  Map<String, dynamic> json,
) => CharacterMovementResponseSchema(
  data: CharacterMovementDataSchema.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$CharacterMovementResponseSchemaToJson(
  CharacterMovementResponseSchema instance,
) => <String, dynamic>{'data': instance.data};
