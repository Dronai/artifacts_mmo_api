import 'package:json_annotation/json_annotation.dart';

import '../../../../common/models/cooldown_schema.dart';
import '../../../characters/models/character_schema.dart';
import 'gold_schema.dart';

part 'bank_gold_transaction_schema.g.dart';

@JsonSerializable()
class BankGoldTransactionSchema {
  BankGoldTransactionSchema({
    required this.cooldown,
    required this.bank,
    required this.character,
  });

  /// Cooldown details.
  CooldownSchema cooldown;

  /// Bank details.
  GoldSchema bank;

  /// Player details.
  CharacterSchema character;

  factory BankGoldTransactionSchema.fromJson(Map<String, dynamic> json) =>
      _$BankGoldTransactionSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$BankGoldTransactionSchemaToJson(this);
}