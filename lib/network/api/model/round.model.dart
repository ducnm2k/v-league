class RoundModel {
  RoundModel({
    required this.id,
    required this.tournamentId,
    required this.name,
  });

  int id;
  int tournamentId;
  String name;

  factory RoundModel.fromJson(Map<String, dynamic> json) => RoundModel(
    id: json["id"],
    tournamentId: json["tournamentID"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "tournamentID": tournamentId,
    "name": name,
  };
}
