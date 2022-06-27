class AccountModel{
  String id;
  String name;
  String imageUrl;
  String email;
  AccountModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.email,
  });

  factory AccountModel.fromJson(Map<String, dynamic> json) => AccountModel(
    id: json["id"],
    name: json["name"],
    imageUrl: json["imageURL"],
    email: json["email"],
  );
  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "imageURL": imageUrl,
    "email": email,
  };
}
