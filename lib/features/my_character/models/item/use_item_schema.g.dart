// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'use_item_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UseItemSchema _$UseItemSchemaFromJson(Map<String, dynamic> json) =>
    UseItemSchema(
      cooldown: CooldownSchema.fromJson(
        json['cooldown'] as Map<String, dynamic>,
      ),
      item: ItemSchema.fromJson(json['item'] as Map<String, dynamic>),
      character: CharacterSchema.fromJson(
        json['character'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$UseItemSchemaToJson(UseItemSchema instance) =>
    <String, dynamic>{
      'cooldown': instance.cooldown,
      'item': instance.item,
      'character': instance.character,
    };
