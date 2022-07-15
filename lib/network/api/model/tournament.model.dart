class TournamentsModel {
  TournamentsModel({
    required this.id,
    required this.name,
    required this.from,
    required this.to,
    required this.rounds,
  });

  int id;
  String name;
  DateTime from;
  DateTime to;
  List<dynamic> rounds;

  factory TournamentsModel.fromJson(Map<String, dynamic> json) => TournamentsModel(
    id: json["id"],
    name: json["name"],
    from: DateTime.parse(json["from"]),
    to: DateTime.parse(json["to"]),
    rounds: List<dynamic>.from(json["rounds"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "from": from.toIso8601String(),
    "to": to.toIso8601String(),
    "rounds": List<dynamic>.from(rounds.map((x) => x)),
  };
}

