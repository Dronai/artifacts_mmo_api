// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_account_details_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyAccountDetailsSchema _$MyAccountDetailsSchemaFromJson(
  Map<String, dynamic> json,
) => MyAccountDetailsSchema(
  username: json['username'] as String,
  email: json['email'] as String,
  subscribed: json['subscribed'] as bool,
  status: $enumDecode(_$AccountStatusEnumMap, json['status']),
  badges:
      (json['badges'] as List<dynamic>?)?.map((e) => e as String?).toList() ??
      const [],
  gems: (json['gems'] as num).toInt(),
  achievementsPoints: (json['achievements_points'] as num).toInt(),
  banned: json['banned'] as bool,
  banReason: json['ban_reason'] as String? ?? "",
);

Map<String, dynamic> _$MyAccountDetailsSchemaToJson(
  MyAccountDetailsSchema instance,
) => <String, dynamic>{
  'username': instance.username,
  'email': instance.email,
  'subscribed': instance.subscribed,
  'status': _$AccountStatusEnumMap[instance.status]!,
  'badges': instance.badges,
  'gems': instance.gems,
  'achievements_points': instance.achievementsPoints,
  'banned': instance.banned,
  'ban_reason': instance.banReason,
};

const _$AccountStatusEnumMap = {
  AccountStatus.standard: 'standard',
  AccountStatus.founder: 'founder',
  AccountStatus.gold_founder: 'gold_founder',
  AccountStatus.vip_founder: 'vip_founder',
};
