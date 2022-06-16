import 'package:v_leauge/network/api/model/player.dart';


Player _$PlayerFromJson(Map<String, dynamic> json) {
  return Player()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..imageUrl = json['first_name'] as String
    ..dateOfBirth = json['dateOfBirth'] as DateTime;

}
Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'imageUrl': instance.imageUrl,
  'dateOfBirth': instance.dateOfBirth,
};