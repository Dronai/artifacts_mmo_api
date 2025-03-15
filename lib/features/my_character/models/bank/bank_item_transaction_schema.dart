import 'package:json_annotation/json_annotation.dart';

import '../../../../common/models/cooldown_schema.dart';
import '../../../../common/models/item/item_schema.dart';
import '../../../../common/models/item/simple_item_schema.dart';
import '../../../characters/models/character_schema.dart';

part 'bank_item_transaction_schema.g.dart';

@JsonSerializable()
class BankItemTransactionSchema {
  BankItemTransactionSchema({
    required this.cooldown,
    required this.item,
    this.bank = const [],
    required this.character,
  });

  CooldownSchema cooldown;

  ItemSchema item;

  List<SimpleItemSchema> bank;

  CharacterSchema character;

  factory BankItemTransactionSchema.fromJson(Map<String, dynamic> json) =>
      _$BankItemTransactionSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$BankItemTransactionSchemaToJson(this);
}