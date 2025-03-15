// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_gold_transaction_response_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankGoldTransactionResponseSchema _$BankGoldTransactionResponseSchemaFromJson(
  Map<String, dynamic> json,
) => BankGoldTransactionResponseSchema(
  data: BankGoldTransactionSchema.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$BankGoldTransactionResponseSchemaToJson(
  BankGoldTransactionResponseSchema instance,
) => <String, dynamic>{'data': instance.data};
