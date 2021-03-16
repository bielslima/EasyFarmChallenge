import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Credentials.g.dart';

@JsonSerializable(
  anyMap: true,
  nullable: true,
  fieldRename: FieldRename.snake,
)
class Credentials extends Equatable {
  final String email;
  final String password;

  Credentials({this.email, this.password});

  factory Credentials.fromJson(Map json) => _$CredentialsFromJson(json);
  Map<String, dynamic> toJson() => _$CredentialsToJson(this);

  @override
  List<Object> get props => [this];
}
