class LoginResponseEntity {
    final String jwt;
    final UserResponseEntity user;

    LoginResponseEntity({
        required this.jwt,
        required this.user,
    });

    factory LoginResponseEntity.fromJson(Map<String, dynamic> json) => LoginResponseEntity(
        jwt: json["jwt"],
        user: UserResponseEntity.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "jwt": jwt,
        "user": user.toJson(),
    };
}

class UserResponseEntity {
    final int id;
    final String username;
    final String email;
    final String provider;
    final bool confirmed;
    final bool blocked;
    final DateTime createdAt;
    final DateTime updatedAt;
    final dynamic collectionCard;

    UserResponseEntity({
        required this.id,
        required this.username,
        required this.email,
        required this.provider,
        required this.confirmed,
        required this.blocked,
        required this.createdAt,
        required this.updatedAt,
        required this.collectionCard,
    });

    factory UserResponseEntity.fromJson(Map<String, dynamic> json) => UserResponseEntity(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        provider: json["provider"],
        confirmed: json["confirmed"],
        blocked: json["blocked"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        collectionCard: json["collection_card"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "provider": provider,
        "confirmed": confirmed,
        "blocked": blocked,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "collection_card": collectionCard,
    };
}