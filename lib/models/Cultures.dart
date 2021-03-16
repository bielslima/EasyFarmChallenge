import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Cultures.g.dart';

@JsonSerializable(
  anyMap: true,
  fieldRename: FieldRename.snake,
)
class Cultures extends Equatable {
  final String id;
  final String name;
  final String category;
  final String code;
  final String createdAt;
  final String updatedAt;

  Cultures(
      {this.id,
      this.name,
      this.category,
      this.code,
      this.createdAt,
      this.updatedAt});

  factory Cultures.fromJson(Map json) => _$CulturesFromJson(json);
  Map<String, dynamic> toJson() => _$CulturesToJson(this);

  @override
  List<Object> get props => [];
}
