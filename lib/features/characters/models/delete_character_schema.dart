import 'package:json_annotation/json_annotation.dart';

part 'delete_character_schema.g.dart';

@JsonSerializable()
class DeleteCharacterSchema {
  DeleteCharacterSchema({required this.name}) {
    validateName(name);
  }

  String name;

  void validateName(String name) {
    if (name.length < 3 || name.length > 12) {
      throw ArgumentError('Name must be between 3 and 12 characters');
    }
  }

  factory DeleteCharacterSchema.fromJson(Map<String, dynamic> json) =>
      _$DeleteCharacterSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteCharacterSchemaToJson(this);
}
