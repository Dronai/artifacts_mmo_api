import 'package:json_annotation/json_annotation.dart';

part 'deposit_withdraw_gold_schema.g.dart';

@JsonSerializable()
class DepositWithdrawGoldSchema {
  DepositWithdrawGoldSchema({
    required this.quantity,
  });

  int quantity;

  factory DepositWithdrawGoldSchema.fromJson(Map<String, dynamic> json) =>
      _$DepositWithdrawGoldSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$DepositWithdrawGoldSchemaToJson(this);
}