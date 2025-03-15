// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_rest_data_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterRestDataSchema _$CharacterRestDataSchemaFromJson(
  Map<String, dynamic> json,
) => CharacterRestDataSchema(
  cooldown: CooldownSchema.fromJson(json['cooldown'] as Map<String, dynamic>),
  hpRestored: (json['hp_restored'] as num).toInt(),
  character: CharacterSchema.fromJson(
    json['character'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$CharacterRestDataSchemaToJson(
  CharacterRestDataSchema instance,
) => <String, dynamic>{
  'cooldown': instance.cooldown,
  'hp_restored': instance.hpRestored,
  'character': instance.character,
};
