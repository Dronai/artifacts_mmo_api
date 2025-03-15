// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_item_transaction_response_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankItemTransactionResponseSchema _$BankItemTransactionResponseSchemaFromJson(
  Map<String, dynamic> json,
) => BankItemTransactionResponseSchema(
  data: BankItemTransactionSchema.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$BankItemTransactionResponseSchemaToJson(
  BankItemTransactionResponseSchema instance,
) => <String, dynamic>{'data': instance.data};
