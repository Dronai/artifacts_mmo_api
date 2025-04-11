import 'package:artifacts_mmo_api/common/enum/account_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'my_account_details_schema.g.dart';

@JsonSerializable()
class MyAccountDetailsSchema {
  MyAccountDetailsSchema({
    required this.username,
    required this.email,
    required this.subscribed,
    required this.status,
    this.badges = const [],
    required this.gems,
    required this.achievementsPoints,
    required this.banned,
    this.banReason = "",
  });

  String username;

  String email;

  bool subscribed;

  AccountStatus status;

  List<String?> badges;

  int gems;

  @JsonKey(name: "achievements_points")
  int achievementsPoints;

  bool banned;

  @JsonKey(name: "ban_reason")
  String banReason;

  factory MyAccountDetailsSchema.fromJson(Map<String, dynamic> json) =>
      _$MyAccountDetailsSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$MyAccountDetailsSchemaToJson(this);
}
