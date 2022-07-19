class MatchsModel {
  MatchsModel({
    required this.id,
    required this.homeClubId,
    required this.homeClub,
    required this.homeGoals,
    required this.awayClubId,
    required this.awayClub,
    required this.awayGoals,
    required this.roundId,
    required this.round,
    required this.startDate,
    required this.endDate,
  });

  int id;
  int homeClubId;
  dynamic homeClub;
  int homeGoals;
  int awayClubId;
  dynamic awayClub;
  int awayGoals;
  int roundId;
  dynamic round;
  DateTime startDate;
  dynamic endDate;

  factory MatchsModel.fromJson(Map<String, dynamic> json) => MatchsModel(
    id: json["id"],
    homeClubId: json["homeClubID"],
    homeClub: json["homeClub"],
    homeGoals: json["homeGoals"],
    awayClubId: json["awayClubID"],
    awayClub: json["awayClub"],
    awayGoals: json["awayGoals"],
    roundId: json["roundID"],
    round: json["round"],
    startDate: DateTime.parse(json["startDate"]),
    endDate: json["endDate"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "homeClubID": homeClubId,
    "homeClub": homeClub,
    "homeGoals": homeGoals,
    "awayClubID": awayClubId,
    "awayClub": awayClub,
    "awayGoals": awayGoals,
    "roundID": roundId,
    "round": round,
    "startDate": startDate.toIso8601String(),
    "endDate": endDate,
  };
}
