// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Credentials.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Credentials _$CredentialsFromJson(Map json) {
  return Credentials(
    email: json['email'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$CredentialsToJson(Credentials instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
