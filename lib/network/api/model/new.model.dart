class NewsModel {
  NewsModel({
    required this.id,
    required this.createdAt,
    required this.title,
    required this.thumbnailImageUrl,
    required this.authorId,
    required this.author,
    required this.players,
    required this.clubs,
  });

  int id;
  DateTime createdAt;
  String title;
  String thumbnailImageUrl;
  String authorId;
  Author author;
  List<dynamic> players;
  List<dynamic> clubs;

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
    id: json["id"],
    createdAt: DateTime.parse(json["createdAt"]),
    title: json["title"],
    thumbnailImageUrl: json["thumbnailImageURL"],
    authorId: json["authorID"],
    author: Author.fromJson(json["author"]),
    players: List<dynamic>.from(json["players"].map((x) => x)),
    clubs: List<dynamic>.from(json["clubs"].map((x) => x)),
  );

}
class Author {
  Author({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.email,
  });

  String id;
  String name;
  String imageUrl;
  String email;

  factory Author.fromJson(Map<String, dynamic> json) =>
      Author(
        id: json["id"],
        name: json["name"],
        imageUrl: json["imageURL"],
        email: json["email"],
      );
}