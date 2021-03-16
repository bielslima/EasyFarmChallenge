// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Attributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attributes _$AttributesFromJson(Map json) {
  return Attributes(
    name: json['name'] as String,
    area: json['area'] as String,
    owner: json['owner'] as String,
    hasPerenial: json['has_perenial'] as bool,
    idDefault: json['id_default'] as bool,
    latitude: json['latitude'] as String,
    imageUrls: (json['image_urls'] as List)?.map((e) => e as String)?.toList(),
    longitude: json['longitude'] as String,
    productiveArea: json['productive_area'] as String,
    farmGroupId: json['farm_group_id'] as String,
    fieldExtrasAttributes: (json['field_extras_attributes'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    cultures: (json['cultures'] as List)
        ?.map((e) => e == null ? null : Cultures.fromJson(e as Map))
        ?.toList(),
    polygon: (json['polygon'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'name': instance.name,
      'area': instance.area,
      'owner': instance.owner,
      'has_perenial': instance.hasPerenial,
      'id_default': instance.idDefault,
      'latitude': instance.latitude,
      'image_urls': instance.imageUrls,
      'longitude': instance.longitude,
      'productive_area': instance.productiveArea,
      'farm_group_id': instance.farmGroupId,
      'field_extras_attributes': instance.fieldExtrasAttributes,
      'cultures': instance.cultures,
      'polygon': instance.polygon,
    };
