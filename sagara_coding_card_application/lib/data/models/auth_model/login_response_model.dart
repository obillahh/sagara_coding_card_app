class LoginResponseModel {
    String? jwt;
    UserResponseModel? user;

    LoginResponseModel({
        this.jwt,
        this.user,
    });

    factory LoginResponseModel.fromJson(Map<String, dynamic> json) => LoginResponseModel(
        jwt: json["jwt"],
        user: json["user"] == null ? null : UserResponseModel.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "jwt": jwt,
        "user": user?.toJson(),
    };
}

class UserResponseModel {
    int? id;
    String? username;
    String? email;
    String? provider;
    bool? confirmed;
    bool? blocked;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic collectionCard;

    UserResponseModel({
        this.id,
        this.username,
        this.email,
        this.provider,
        this.confirmed,
        this.blocked,
        this.createdAt,
        this.updatedAt,
        this.collectionCard,
    });

    factory UserResponseModel.fromJson(Map<String, dynamic> json) => UserResponseModel(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        provider: json["provider"],
        confirmed: json["confirmed"],
        blocked: json["blocked"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        collectionCard: json["collection_card"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "provider": provider,
        "confirmed": confirmed,
        "blocked": blocked,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "collection_card": collectionCard,
    };
}