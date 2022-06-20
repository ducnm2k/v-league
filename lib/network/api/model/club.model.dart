class ClubModel {
  int id;
  String name;
  String imageUrl;
  String headQuarter;
  int stadiumId;
  Stadium stadium;

  ClubModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.headQuarter,
    required this.stadiumId,
    required this.stadium,
  });

  factory ClubModel.fromJson(Map<String, dynamic> json) => ClubModel
    (
      id: json["id"],
      name: json["name"],
      imageUrl: json["imageUrl"],
      headQuarter: json["headQuarter"],
      stadiumId: json["stadiumId"],
      stadium: json["stadium"]
  );
}

class Stadium {
  int id;
  String name;
  String address;
  String imageUrl;

  Stadium({
    required this.id,
    required this.name,
    required this.address,
    required this.imageUrl,
  });

}
