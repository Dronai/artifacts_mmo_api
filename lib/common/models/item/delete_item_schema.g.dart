// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_item_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteItemSchema _$DeleteItemSchemaFromJson(Map<String, dynamic> json) =>
    DeleteItemSchema(
      cooldown: CooldownSchema.fromJson(
        json['cooldown'] as Map<String, dynamic>,
      ),
      item: SimpleItemSchema.fromJson(json['item'] as Map<String, dynamic>),
      character: CharacterSchema.fromJson(
        json['character'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$DeleteItemSchemaToJson(DeleteItemSchema instance) =>
    <String, dynamic>{
      'cooldown': instance.cooldown,
      'item': instance.item,
      'character': instance.character,
    };
