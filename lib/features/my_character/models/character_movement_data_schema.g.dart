// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_movement_data_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterMovementDataSchema _$CharacterMovementDataSchemaFromJson(
  Map<String, dynamic> json,
) => CharacterMovementDataSchema(
  cooldown: CooldownSchema.fromJson(json['cooldown'] as Map<String, dynamic>),
  destination: MapSchema.fromJson(json['destination'] as Map<String, dynamic>),
  character: CharacterSchema.fromJson(
    json['character'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$CharacterMovementDataSchemaToJson(
  CharacterMovementDataSchema instance,
) => <String, dynamic>{
  'cooldown': instance.cooldown,
  'destination': instance.destination,
  'character': instance.character,
};
