// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserResponseEntity {
  final String jwt;
  final UserDataEntity user;

  UserResponseEntity({
    required this.jwt,
    required this.user,
  });

  factory UserResponseEntity.fromJson(Map<String, dynamic> json) => UserResponseEntity(
        jwt: json["jwt"],
        user: UserDataEntity.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "jwt": jwt,
        "user": user.toJson(),
      };

  UserResponseEntity copyWith({
    String? jwt,
    UserDataEntity? user,
  }) {
    return UserResponseEntity(
      jwt: jwt ?? this.jwt,
      user: user ?? this.user,
    );
  }
}

class UserDataEntity {
  final int id;
  final String username;
  final String email;
  final String provider;
  final bool confirmed;
  final bool blocked;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int collectionCard;

  UserDataEntity({
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

  factory UserDataEntity.fromJson(Map<String, dynamic> json) => UserDataEntity(
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

  UserDataEntity copyWith({
    int? id,
    String? username,
    String? email,
    String? provider,
    bool? confirmed,
    bool? blocked,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? collectionCard,
  }) {
    return UserDataEntity(
      id: id ?? this.id,
      username: username ?? this.username,
      email: email ?? this.email,
      provider: provider ?? this.provider,
      confirmed: confirmed ?? this.confirmed,
      blocked: blocked ?? this.blocked,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      collectionCard: collectionCard ?? this.collectionCard,
    );
  }
}
