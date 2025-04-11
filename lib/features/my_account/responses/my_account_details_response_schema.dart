import 'package:artifacts_mmo_api/features/my_account/models/my_account_details_schema.dart';
import 'package:json_annotation/json_annotation.dart';

part 'my_account_details_response_schema.g.dart';

@JsonSerializable()
class MyAccountDetailsResponseSchema {
  MyAccountDetailsResponseSchema({required this.data});

  MyAccountDetailsSchema data;

  factory MyAccountDetailsResponseSchema.fromJson(Map<String, dynamic> json) =>
      _$MyAccountDetailsResponseSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$MyAccountDetailsResponseSchemaToJson(this);
}
