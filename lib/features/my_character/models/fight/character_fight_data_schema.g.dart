// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_fight_data_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterFightDataSchema _$CharacterFightDataSchemaFromJson(
  Map<String, dynamic> json,
) => CharacterFightDataSchema(
  cooldown: CooldownSchema.fromJson(json['cooldown'] as Map<String, dynamic>),
  fight: FightSchema.fromJson(json['fight'] as Map<String, dynamic>),
  character: CharacterSchema.fromJson(
    json['character'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$CharacterFightDataSchemaToJson(
  CharacterFightDataSchema instance,
) => <String, dynamic>{
  'cooldown': instance.cooldown,
  'fight': instance.fight,
  'character': instance.character,
};
