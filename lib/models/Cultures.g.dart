// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Cultures.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cultures _$CulturesFromJson(Map json) {
  return Cultures(
    id: json['id'] as String,
    name: json['name'] as String,
    category: json['category'] as String,
    code: json['code'] as String,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
  );
}

Map<String, dynamic> _$CulturesToJson(Cultures instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'code': instance.code,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
