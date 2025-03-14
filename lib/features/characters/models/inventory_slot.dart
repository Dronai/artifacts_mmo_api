import 'package:json_annotation/json_annotation.dart';

part 'inventory_slot.g.dart';

@JsonSerializable()
class InventorySlot {
  InventorySlot({required this.slot, required this.code, required this.quantity});

  int slot;

  String code;

  int quantity;

  factory InventorySlot.fromJson(Map<String, dynamic> json) => _$InventorySlotFromJson(json);

  Map<String, dynamic> toJson() => _$InventorySlotToJson(this);
}