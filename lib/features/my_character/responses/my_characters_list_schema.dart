import 'package:artifacts_mmo_api/features/characters/models/character_schema.dart';
import 'package:json_annotation/json_annotation.dart';

part 'my_characters_list_schema.g.dart';

@JsonSerializable()
class MyCharactersListSchema {

  MyCharactersListSchema({required this.data});

  List<CharacterSchema> data;

  factory MyCharactersListSchema.fromJson(Map<String, dynamic> json) => _$MyCharactersListSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$MyCharactersListSchemaToJson(this);
}