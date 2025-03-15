import 'package:artifacts_mmo_api/features/my_character/models/bank/bank_gold_transaction_schema.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bank_gold_transaction_response_schema.g.dart';

@JsonSerializable()
class BankGoldTransactionResponseSchema {
  BankGoldTransactionResponseSchema({required this.data});

  BankGoldTransactionSchema data;

  factory BankGoldTransactionResponseSchema.fromJson(Map<String, dynamic> json) =>
      _$BankGoldTransactionResponseSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$BankGoldTransactionResponseSchemaToJson(this);
}