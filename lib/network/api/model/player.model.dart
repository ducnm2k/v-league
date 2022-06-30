class PlayerModel {
    int id;
    String name;
    int heightCm;
    int weightKg;
    String imageUrl;
    DateTime? dateOfBirth;
    PlayerModel({
        required this.id,
        required this.name,
        required this.heightCm,
        required this.weightKg,
        required this.imageUrl,
        required this.dateOfBirth,
    });
     factory PlayerModel.fromJson(Map<String, dynamic> json) => PlayerModel(
        id: json["id"],
        name: json["name"],
        heightCm: json["heightCm"] == null ? 0 : json["heightCm"],
        weightKg: json["weightKg"] == null ? 0 : json["weightKg"],
        imageUrl: json["imageURL"],
        dateOfBirth: json["dateOfBirth"] == null ? null : DateTime.parse(json["dateOfBirth"]),
    );
    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "heightCm": heightCm == null ? null : heightCm,
        "weightKg": weightKg == null ? null : weightKg,
        "imageURL": imageUrl,
        "dateOfBirth": dateOfBirth == null ? null : dateOfBirth!.toIso8601String(),
    };
}