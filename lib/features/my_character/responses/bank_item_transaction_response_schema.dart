import 'package:artifacts_mmo_api/features/my_character/models/bank/bank_item_transaction_schema.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bank_item_transaction_response_schema.g.dart';

@JsonSerializable()
class BankItemTransactionResponseSchema {
  BankItemTransactionResponseSchema({required this.data});

  BankItemTransactionSchema data;

  factory BankItemTransactionResponseSchema.fromJson(
    Map<String, dynamic> json,
  ) => _$BankItemTransactionResponseSchemaFromJson(json);

  Map<String, dynamic> toJson() =>
      _$BankItemTransactionResponseSchemaToJson(this);
}
