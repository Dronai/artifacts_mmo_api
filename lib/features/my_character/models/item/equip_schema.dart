import 'package:json_annotation/json_annotation.dart';

import '../../../../common/enum/ItemSlot.dart';

part 'equip_schema.g.dart';

@JsonSerializable()
class EquipSchema {
  EquipSchema({required this.code, required this.slot, this.quantity = 1}) {
    validateQuantity(slot, quantity);
  }

  String code;

  ItemSlot slot;

  int quantity;

  void validateQuantity(ItemSlot slot, int quantity) {
    if (slot != ItemSlot.utility1 && slot != ItemSlot.utility2) {
      if (quantity > 1) {
        throw ArgumentError(
          "Quantity cannot be greater than 1 for non-utility items",
        );
      }
    } else if (quantity > 100 || quantity < 1) {
      throw ArgumentError(
        "Quantity for utility item must be between 1 and 100",
      );
    }
  }

  factory EquipSchema.fromJson(Map<String, dynamic> json) =>
      _$EquipSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$EquipSchemaToJson(this);
}
