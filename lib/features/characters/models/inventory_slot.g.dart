// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_slot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventorySlot _$InventorySlotFromJson(Map<String, dynamic> json) =>
    InventorySlot(
      slot: (json['slot'] as num).toInt(),
      code: json['code'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$InventorySlotToJson(InventorySlot instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'code': instance.code,
      'quantity': instance.quantity,
    };
