import 'package:easy_farm/models/Attributes.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Farm.g.dart';

@JsonSerializable(
  anyMap: true,
  fieldRename: FieldRename.snake,
)
class Farms extends Equatable {
  final String id;
  final String type;
  final Attributes attributes;

  Farms({this.id, this.type, this.attributes});

  factory Farms.fromJson(Map json) => _$FarmsFromJson(json);
  Map<String, dynamic> toJson() => _$FarmsToJson(this);

  @override
  List<Object> get props => [
        this.id,
        this.type,
        this.attributes,
      ];
}
