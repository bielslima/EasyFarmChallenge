import 'package:easy_farm/models/Roles.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'Farm.dart';

part 'User.g.dart';

@JsonSerializable(
  anyMap: true,
  nullable: true,
  fieldRename: FieldRename.snake,
)
class User extends Equatable {
  final String id;
  final String login;
  final String email;
  final String provider;
  final String uid;
  final String name;
  final String status;
  final String expire;
  final String kind;
  final String farmDefaultId;
  final String score;
  final String avatar;
  final String phone;
  final String tk;
  final String point;
  final List<String> addons;
  final List<Roles> roles;
  final List<Farms> farms;

  User(
      {this.id,
      this.login,
      this.email,
      this.provider,
      this.uid,
      this.name,
      this.status,
      this.expire,
      this.kind,
      this.farmDefaultId,
      this.score,
      this.avatar,
      this.phone,
      this.tk,
      this.point,
      this.addons,
      this.roles,
      this.farms});

  factory User.fromJson(Map json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object> get props => [];
}
