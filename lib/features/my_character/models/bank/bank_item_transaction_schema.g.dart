// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_item_transaction_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankItemTransactionSchema _$BankItemTransactionSchemaFromJson(
  Map<String, dynamic> json,
) => BankItemTransactionSchema(
  cooldown: CooldownSchema.fromJson(json['cooldown'] as Map<String, dynamic>),
  item: ItemSchema.fromJson(json['item'] as Map<String, dynamic>),
  bank:
      (json['bank'] as List<dynamic>?)
          ?.map((e) => SimpleItemSchema.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  character: CharacterSchema.fromJson(
    json['character'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$BankItemTransactionSchemaToJson(
  BankItemTransactionSchema instance,
) => <String, dynamic>{
  'cooldown': instance.cooldown,
  'item': instance.item,
  'bank': instance.bank,
  'character': instance.character,
};
