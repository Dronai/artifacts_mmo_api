import 'package:json_annotation/json_annotation.dart';

import '../../../../common/enum/ItemSlot.dart';

part 'unequip_schema.g.dart';

@JsonSerializable()
class UnequipSchema {
  UnequipSchema({required this.slot, this.quantity = 1}) {
    validateQuantity(slot, quantity);
  }

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

  factory UnequipSchema.fromJson(Map<String, dynamic> json) =>
      _$UnequipSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$UnequipSchemaToJson(this);
}
