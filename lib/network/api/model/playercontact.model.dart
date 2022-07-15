class PlayerContact {
  PlayerContact({
    required this.id,
    required this.playerId,
    required this.player,
    required this.clubId,
    required this.club,
    required this.number,
    required this.salary,
    required this.start,
    required this.end,
    required this.description,
  });

  int id;
  int playerId;
  Player player;
  int clubId;
  Club club;
  int number;
  int salary;
  DateTime start;
  DateTime end;
  String description;

  factory PlayerContact.fromJson(Map<String, dynamic> json) => PlayerContact(
        id: json["id"],
        playerId: json["playerID"],
        player: Player.fromJson(json["player"]),
        clubId: json["clubID"],
        club: Club.fromJson(json["club"]),
        number: json["number"],
        salary: json["salary"],
        start: DateTime.parse(json["start"]),
        end: DateTime.parse(json["end"]),
        description: json["description"],
      );
}

class Club {
  Club({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.headQuarter,
    required this.stadiumId,
    this.stadium,
  });

  int id;
  String name;
  String imageUrl;
  String headQuarter;
  int stadiumId;
  dynamic stadium;

  factory Club.fromJson(Map<String, dynamic> json) => Club(
        id: json["id"],
        name: json["name"],
        imageUrl: json["imageURL"],
        headQuarter: json["headQuarter"],
        stadiumId: json["stadiumID"],
        stadium: json["stadium"],
      );
}

class Player {
  Player({
    required this.id,
    required this.name,
    required this.heightCm,
    required this.weightKg,
    required this.imageUrl,
    required this.dateOfBirth,
  });

  int id;
  String name;
  int heightCm;
  int weightKg;
  String imageUrl;
  DateTime dateOfBirth;

  factory Player.fromJson(Map<String, dynamic> json) => Player(
        id: json["id"],
        name: json["name"],
        heightCm: json["heightCm"] == null ? 0 : json["heightCm"],
        weightKg: json["weightKg"] == null ? 0 : json["weightKg"],
        imageUrl: json["imageURL"],
        dateOfBirth: DateTime.parse(json["dateOfBirth"]),
      );
}
