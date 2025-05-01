import 'package:artifacts_mmo_api/common/models/map/map_schema.dart';
import 'package:artifacts_mmo_api/features/monsters/models/monster_schema.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data_page_monster_schema.g.dart';

@JsonSerializable()
class DataPageMonsterSchema {
  DataPageMonsterSchema({
    required this.data,
    required this.total,
    required this.page,
    required this.size,
    this.pages = 0,
  });

  List<MonsterSchema> data;

  int total;

  int page;

  int size;

  int pages;

  factory DataPageMonsterSchema.fromJson(Map<String, dynamic> json) =>
      _$DataPageMonsterSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$DataPageMonsterSchemaToJson(this);
}
