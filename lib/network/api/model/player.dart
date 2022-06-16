import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Player {
  @JsonKey(name : "id")
  late int id;
  @JsonKey(name : "name")
  late String name;
  @JsonKey(name : "imageURL")
  late String imageUrl;
  @JsonKey(name : "dateOfBirth")
  late DateTime dateOfBirth;

  Player();

  factory Player.fromJson(Map<String, dynamic> json) =>
      _$PlayerFromJson(json);
}

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return Player()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..imageUrl = json['imageURL'] as String
    ..dateOfBirth = json['dateOfBirth'] as DateTime;
}