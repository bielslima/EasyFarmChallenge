// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Addons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Addons _$AddonsFromJson(Map json) {
  return Addons(
    id: json['id'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    price: json['price'] as String,
    slug: json['slug'] as String,
    myUrl: json['my_url'] as String,
  );
}

Map<String, dynamic> _$AddonsToJson(Addons instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'slug': instance.slug,
      'my_url': instance.myUrl,
    };
