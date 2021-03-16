// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Farm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Farms _$FarmsFromJson(Map json) {
  return Farms(
    id: json['id'] as String,
    type: json['type'] as String,
    attributes: json['attributes'] == null
        ? null
        : Attributes.fromJson(json['attributes'] as Map),
  );
}

Map<String, dynamic> _$FarmsToJson(Farms instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes,
    };
