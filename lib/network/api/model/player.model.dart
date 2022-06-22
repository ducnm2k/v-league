class PlayerModel {
   int id;
    String name;
    String imageUrl;
    DateTime dateOfBirth;
    PlayerModel({
        required this.id,
        required this.name,
        required this.imageUrl,
        required this.dateOfBirth,
    });

     factory PlayerModel.fromJson(Map<String, dynamic> json) => PlayerModel(
        id: json["id"],
        name: json["name"],
        imageUrl: json["imageURL"],
        dateOfBirth: DateTime.parse(json["dateOfBirth"]),
    );
}