// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recycling_data_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecyclingDataSchema _$RecyclingDataSchemaFromJson(Map<String, dynamic> json) =>
    RecyclingDataSchema(
      cooldown: CooldownSchema.fromJson(
        json['cooldown'] as Map<String, dynamic>,
      ),
      details: RecyclingItemsSchema.fromJson(
        json['details'] as Map<String, dynamic>,
      ),
      character: CharacterSchema.fromJson(
        json['character'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$RecyclingDataSchemaToJson(
  RecyclingDataSchema instance,
) => <String, dynamic>{
  'cooldown': instance.cooldown,
  'details': instance.details,
  'character': instance.character,
};
