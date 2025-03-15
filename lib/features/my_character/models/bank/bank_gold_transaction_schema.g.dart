// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_gold_transaction_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankGoldTransactionSchema _$BankGoldTransactionSchemaFromJson(
  Map<String, dynamic> json,
) => BankGoldTransactionSchema(
  cooldown: CooldownSchema.fromJson(json['cooldown'] as Map<String, dynamic>),
  bank: GoldSchema.fromJson(json['bank'] as Map<String, dynamic>),
  character: CharacterSchema.fromJson(
    json['character'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$BankGoldTransactionSchemaToJson(
  BankGoldTransactionSchema instance,
) => <String, dynamic>{
  'cooldown': instance.cooldown,
  'bank': instance.bank,
  'character': instance.character,
};
