import 'package:artifacts_mmo_api/common/enum/skin.dart';
import 'package:json_annotation/json_annotation.dart';

import 'inventory_slot.dart';

part 'character_schema.g.dart';

@JsonSerializable()
class CharacterSchema{
  CharacterSchema({
    required this.name,
    required this.account,
    required this.skin,
    required this.level,
    required this.xp,
    required this.maxXp,
    required this.gold,
    required this.speed,
    required this.miningLevel,
    required this.miningXp,
    required this.miningMaxXp,
    required this.woodcuttingLevel,
    required this.woodcuttingXp,
    required this.woodcuttingMaxXp,
    required this.fishingLevel,
    required this.fishingXp,
    required this.fishingMaxXp,
    required this.weaponcraftingLevel,
    required this.weaponcraftingXp,
    required this.weaponcraftingMaxXp,
    required this.gearcraftingLevel,
    required this.gearcraftingXp,
    required this.gearcraftingMaxXp,
    required this.jewelrycraftingLevel,
    required this.jewelrycraftingXp,
    required this.jewelrycraftingMaxXp,
    required this.cookingLevel,
    required this.cookingXp,
    required this.cookingMaxXp,
    required this.alchemyLevel,
    required this.alchemyXp,
    required this.alchemyMaxXp,
    required this.hp,
    required this.maxHp,
    required this.haste,
    required this.criticalStrike,
    required this.wisdom,
    required this.prospecting,
    required this.attackFire,
    required this.attackEarth,
    required this.attackWater,
    required this.attackAir,
    required this.dmg,
    required this.dmgFire,
    required this.dmgEarth,
    required this.dmgWater,
    required this.dmgAir,
    required this.resFire,
    required this.resEarth,
    required this.resWater,
    required this.resAir,
    required this.x,
    required this.y,
    required this.cooldown,
    this.cooldownExpiration,
    required this.weaponSlot,
    required this.runeSlot,
    required this.shieldSlot,
    required this.helmetSlot,
    required this.bodyArmorSlot,
    required this.legArmorSlot,
    required this.bootsSlot,
    required this.ring1Slot,
    required this.ring2Slot,
    required this.amuletSlot,
    required this.artifact1Slot,
    required this.artifact2Slot,
    required this.artifact3Slot,
    required this.utility1Slot,
    required this.utility1SlotQuantity,
    required this.utility2Slot,
    required this.utility2SlotQuantity,
    required this.bagSlot,
    required this.task,
    required this.taskType,
    required this.taskProgress,
    required this.taskTotal,
    required this.inventoryMaxItems,
    this.inventory = const [],
  });

  String name;

  String account;

  Skin skin;

  int level;

  int xp;

  @JsonKey(name: "max_xp")
  int maxXp;

  int gold;

  int speed;

  @JsonKey(name: "mining_level")
  int miningLevel;

  @JsonKey(name: "mining_xp")
  int miningXp;

  @JsonKey(name: "mining_max_xp")
  int miningMaxXp;

  @JsonKey(name: "woodcutting_level")
  int woodcuttingLevel;

  @JsonKey(name: "woodcutting_xp")
  int woodcuttingXp;

  @JsonKey(name: "woodcutting_max_xp")
  int woodcuttingMaxXp;

  @JsonKey(name: "fishing_level")
  int fishingLevel;

  @JsonKey(name: "fishing_xp")
  int fishingXp;

  @JsonKey(name: "fishing_max_xp")
  int fishingMaxXp;

  @JsonKey(name: "weaponcrafting_level")
  int weaponcraftingLevel;

  @JsonKey(name: "weaponcrafting_xp")
  int weaponcraftingXp;

  @JsonKey(name: "weaponcrafting_max_xp")
  int weaponcraftingMaxXp;

  @JsonKey(name: "gearcrafting_level")
  int gearcraftingLevel;

  @JsonKey(name: "gearcrafting_xp")
  int gearcraftingXp;

  @JsonKey(name: "gearcrafting_max_xp")
  int gearcraftingMaxXp;

  @JsonKey(name: "jewelrycrafting_level")
  int jewelrycraftingLevel;

  @JsonKey(name: "jewelrycrafting_xp")
  int jewelrycraftingXp;

  @JsonKey(name: "jewelrycrafting_max_xp")
  int jewelrycraftingMaxXp;

  @JsonKey(name: "cooking_level")
  int cookingLevel;

  @JsonKey(name: "cooking_xp")
  int cookingXp;

  @JsonKey(name: "cooking_max_xp")
  int cookingMaxXp;

  @JsonKey(name: "alchemy_level")
  int alchemyLevel;

  @JsonKey(name: "alchemy_xp")
  int alchemyXp;

  @JsonKey(name: "alchemy_max_xp")
  int alchemyMaxXp;

  int hp;

  @JsonKey(name: "max_hp")
  int maxHp;

  int haste;

  @JsonKey(name: "critical_strike")
  int criticalStrike;

  int wisdom;

  int prospecting;

  @JsonKey(name: "attack_fire")
  int attackFire;

  @JsonKey(name: "attack_earth")
  int attackEarth;

  @JsonKey(name: "attack_water")
  int attackWater;

  @JsonKey(name: "attack_air")
  int attackAir;

  int dmg;

  @JsonKey(name: "dmg_fire")
  int dmgFire;

  @JsonKey(name: "dmg_earth")
  int dmgEarth;

  @JsonKey(name: "dmg_water")
  int dmgWater;

  @JsonKey(name: "dmg_air")
  int dmgAir;

  @JsonKey(name: "res_fire")
  int resFire;

  @JsonKey(name: "res_earth")
  int resEarth;

  @JsonKey(name: "res_water")
  int resWater;

  @JsonKey(name: "res_air")
  int resAir;

  int x;

  int y;

  int cooldown;

  @JsonKey(name: "cooldown_expiration")
  DateTime? cooldownExpiration;

  @JsonKey(name: "weapon_slot")
  String weaponSlot;

  @JsonKey(name: "rune_slot")
  String runeSlot;

  @JsonKey(name: "shield_slot")
  String shieldSlot;

  @JsonKey(name: "helmet_slot")
  String helmetSlot;

  @JsonKey(name: "body_armor_slot")
  String bodyArmorSlot;

  @JsonKey(name: "leg_armor_slot")
  String legArmorSlot;

  @JsonKey(name: "boots_slot")
  String bootsSlot;

  @JsonKey(name: "ring1_slot")
  String ring1Slot;

  @JsonKey(name: "ring2_slot")
  String ring2Slot;

  @JsonKey(name: "amulet_slot")
  String amuletSlot;

  @JsonKey(name: "artifact1_slot")
  String artifact1Slot;

  @JsonKey(name: "artifact2_slot")
  String artifact2Slot;

  @JsonKey(name: "artifact3_slot")
  String artifact3Slot;

  @JsonKey(name: "utility1_slot")
  String utility1Slot;

  @JsonKey(name: "utility1_slot_quantity")
  int utility1SlotQuantity;

  @JsonKey(name: "utility2_slot")
  String utility2Slot;

  @JsonKey(name: "utility2_slot_quantity")
  int utility2SlotQuantity;

  @JsonKey(name: "bag_slot")
  String bagSlot;

  String task;

  @JsonKey(name: "task_type")
  String taskType;

  @JsonKey(name: "task_progress")
  int taskProgress;

  @JsonKey(name: "task_total")
  int taskTotal;

  @JsonKey(name: "inventory_max_items")
  int inventoryMaxItems;

  List<InventorySlot> inventory;

  factory CharacterSchema.fromJson(Map<String, dynamic> json) => _$CharacterSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterSchemaToJson(this);
}