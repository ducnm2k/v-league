class NewsModel {
  NewsModel({
    required this.id,
    required this.createdAt,
    required this.title,
    required this.thumbnailImageUrl,
    required this.players,
    required this.clubs,
  });

  int id;
  DateTime createdAt;
  String title;
  String thumbnailImageUrl;
  List<dynamic> players;
  List<dynamic> clubs;

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        id: json["id"],
        createdAt: DateTime.parse(json["createdAt"]),
        title: json["title"],
        thumbnailImageUrl: json["thumbnailImageURL"],
        players: List<dynamic>.from(json["players"].map((x) => x)),
        clubs: List<dynamic>.from(json["clubs"].map((x) => x)),
      );
}
