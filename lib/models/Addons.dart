import 'package:json_annotation/json_annotation.dart';

part 'Addons.g.dart';

@JsonSerializable(
  anyMap: true,
  fieldRename: FieldRename.snake,
  nullable: true,
)
class Addons {
  String id;
  String title;
  String description;
  String price;
  String slug;
  String myUrl;

  Addons(
      {this.id,
      this.title,
      this.description,
      this.price,
      this.slug,
      this.myUrl});

  factory Addons.fromJson(json) => _$AddonsFromJson(json);

  Map<String, dynamic> toJson() => _$AddonsToJson(this);
}
