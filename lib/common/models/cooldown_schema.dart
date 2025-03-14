import 'package:json_annotation/json_annotation.dart';

import '../enum/action_type.dart';

part 'cooldown_schema.g.dart';

@JsonSerializable()
class CooldownSchema {
  CooldownSchema({
    required this.totalSeconds,
    required this.remainingSeconds,
    required this.startedAt,
    required this.expiration,
    required this.reason,
  });

  @JsonKey(name: "total_seconds")
  int totalSeconds;

  @JsonKey(name: "remaining_seconds")
  int remainingSeconds;

  @JsonKey(name: "started_at")
  DateTime startedAt;

  DateTime expiration;

  ActionType reason;

  factory CooldownSchema.fromJson(Map<String, dynamic> json) =>
      _$CooldownSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$CooldownSchemaToJson(this);
}