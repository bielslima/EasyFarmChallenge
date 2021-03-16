import 'package:easy_farm/models/Cultures.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Attributes.g.dart';

@JsonSerializable(
  anyMap: true,
  nullable: true,
  fieldRename: FieldRename.snake,
)
class Attributes extends Equatable {
  final String name;
  final String area;
  final String owner;
  final bool hasPerenial;
  final bool idDefault;
  final String latitude;
  final List<String> imageUrls;
  final String longitude;
  final String productiveArea;
  final String farmGroupId;
  final List<String> fieldExtrasAttributes;
  final List<Cultures> cultures;
  final List<String> polygon;

  Attributes(
      {this.name,
      this.area,
      this.owner,
      this.hasPerenial,
      this.idDefault,
      this.latitude,
      this.imageUrls,
      this.longitude,
      this.productiveArea,
      this.farmGroupId,
      this.fieldExtrasAttributes,
      this.cultures,
      this.polygon});

  factory Attributes.fromJson(Map json) => _$AttributesFromJson(json);

  Map<String, dynamic> toJson() => _$AttributesToJson(this);

  @override
  List<Object> get props => [];
}
