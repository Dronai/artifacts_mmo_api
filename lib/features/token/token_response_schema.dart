import 'package:json_annotation/json_annotation.dart';

part 'token_response_schema.g.dart';

@JsonSerializable()
class TokenResponseSchema {
  TokenResponseSchema({
    required this.token,
  });

  String token;

  factory TokenResponseSchema.fromJson(Map<String, dynamic> json) => _$TokenResponseSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$TokenResponseSchemaToJson(this);
}