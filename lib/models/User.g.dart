// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'User.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map json) {
  return User(
    id: json['id'] as String,
    login: json['login'] as String,
    email: json['email'] as String,
    provider: json['provider'] as String,
    uid: json['uid'] as String,
    name: json['name'] as String,
    status: json['status'] as String,
    expire: json['expire'] as String,
    kind: json['kind'] as String,
    farmDefaultId: json['farm_default_id'] as String,
    score: json['score'] as String,
    avatar: json['avatar'] as String,
    phone: json['phone'] as String,
    tk: json['tk'] as String,
    point: json['point'] as String,
    addons: (json['addons'] as List)?.map((e) => e as String)?.toList(),
    roles: (json['roles'] as List)
        ?.map((e) => e == null
            ? null
            : Roles.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    farms: (json['farms'] as List)
        ?.map((e) => e == null ? null : Farms.fromJson(e as Map))
        ?.toList(),
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'email': instance.email,
      'provider': instance.provider,
      'uid': instance.uid,
      'name': instance.name,
      'status': instance.status,
      'expire': instance.expire,
      'kind': instance.kind,
      'farm_default_id': instance.farmDefaultId,
      'score': instance.score,
      'avatar': instance.avatar,
      'phone': instance.phone,
      'tk': instance.tk,
      'point': instance.point,
      'addons': instance.addons,
      'roles': instance.roles,
      'farms': instance.farms,
    };
