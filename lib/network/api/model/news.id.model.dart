import 'package:v_leauge/screens/news_screen/news_ui.dart';

class NewsIDModel {
  NewsIDModel({
    required this.id,
    required this.createdAt,
    required this.title,
    required this.thumbnailImageUrl,
    required this.players,
    required this.clubs,
    required this.content,
  });

  int id;
  DateTime createdAt;
  String title;
  String thumbnailImageUrl;
  List<dynamic> players;
  List<dynamic> clubs;
  String content;

  factory NewsIDModel.fromJson(Map<String, dynamic> json) =>
      NewsIDModel(
        id: json["id"],
        createdAt: DateTime.parse(json["createdAt"]),
        title: json["title"],
        thumbnailImageUrl: json["thumbnailImageURL"],
        players: List<dynamic>.from(json["players"].map((x) => x)),
        clubs: List<dynamic>.from(json["clubs"].map((x) => x)),
        content: json["content"],
      );
}