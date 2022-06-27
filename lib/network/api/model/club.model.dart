class ClubModel {
  ClubModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.headQuarter,
    required this.stadiumId,
    required this.stadium,
  });

  int id;
  String name;
  String imageUrl;
  String headQuarter;
  int stadiumId;
  Stadium stadium;

  factory ClubModel.fromJson(Map<String, dynamic> json) => ClubModel(
        id: json["id"],
        name: json["name"],
        imageUrl: json["imageURL"],
        headQuarter: json["headQuarter"],
        stadiumId: json["stadiumID"],
        stadium: Stadium.fromJson(json["stadium"]),
      );
}

class Stadium {
  Stadium({
    required this.id,
    required this.name,
    required this.address,
    required this.imageUrl,
  });

  int id;
  String name;
  String address;
  String imageUrl;

  factory Stadium.fromJson(Map<String, dynamic> json) => Stadium(
        id: json["id"],
        name: json["name"],
        address: json["address"],
        imageUrl: json["imageURL"],
      );
}
