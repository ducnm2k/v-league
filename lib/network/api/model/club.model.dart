class ClubModel {
<<<<<<< Updated upstream
=======
  int id;
  String name;
  String imageUrl;
  String headQuarter;
  int stadiumId;
 //Stadium stadium;

>>>>>>> Stashed changes
  ClubModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.headQuarter,
    required this.stadiumId,
    //required this.stadium,
  });

<<<<<<< Updated upstream
  int id;
  String name;
  String imageUrl;
  String headQuarter;
  int stadiumId;
  Stadium? stadium;

  factory ClubModel.fromJson(Map<String, dynamic> json) => ClubModel(
        id: json["id"],
        name: json["name"],
        imageUrl: json["imageURL"],
        headQuarter: json["headQuarter"] == null ? '' : json["headQuarter"],
        stadiumId: json["stadiumID"] == null ? 0 : json["stadiumID"],
        stadium: json["stadium"] == null ? null : Stadium.fromJson(json["stadium"]),
      );
  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "imageURL": imageUrl,
    "headQuarter": headQuarter == null ? null : headQuarter,
    "stadiumID": stadiumId == null ? null : stadiumId,
    "stadium": stadium == null ? null : stadium!.toJson(),
  };
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
  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "address": address,
    "imageURL": imageUrl,
  };
}
=======
  factory ClubModel.fromJson(Map<String, dynamic> json) => ClubModel
    (
      id: json["id"],
      name: json["name"],
      imageUrl: json["imageURL"],
      headQuarter: json["headQuarter"],
      stadiumId: json["stadiumID"],
      //stadium: json["stadium"]
  );
}
//
// class Stadium {
//   int id;
//   String name;
//   String address;
//   String imageUrl;
//
//   Stadium({
//     required this.id,
//     required this.name,
//     required this.address,
//     required this.imageUrl,
//   });
//
//   factory Stadium.fromJson(Map<String, dynamic> json) => Stadium
//     (
//       id: json["id"],
//       name: json["name"],
//       address: json["address"],
//       imageUrl: json["imageURL"],
//   );
//
// }
>>>>>>> Stashed changes
