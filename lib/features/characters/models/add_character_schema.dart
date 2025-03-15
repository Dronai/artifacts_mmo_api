import 'package:artifacts_mmo_api/common/enum/skin.dart';
import 'package:json_annotation/json_annotation.dart';

part 'add_character_schema.g.dart';

@JsonSerializable()
class AddCharacterSchema {
  AddCharacterSchema({required this.name, required this.skin}) {
    validateName(name);
  }

  String name;

  Skin skin;

  void validateName(String name) {
    if (name.length < 3 || name.length > 12) {
      throw ArgumentError('Name must be between 3 and 12 characters');
    }
  }

  factory AddCharacterSchema.fromJson(Map<String, dynamic> json) =>
      _$AddCharacterSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$AddCharacterSchemaToJson(this);
}
