// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'user_data_response_entity.dart';

class UserResponseEntity {
  final String jwt;
  final UserDataResponseEntity user;

  UserResponseEntity({
    required this.jwt,
    required this.user,
  });

  factory UserResponseEntity.fromJson(Map<String, dynamic> json) => UserResponseEntity(
        jwt: json["jwt"],
        user: UserDataResponseEntity.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "jwt": jwt,
        "user": user.toJson(),
      };

  UserResponseEntity copyWith({
    String? jwt,
    UserDataResponseEntity? user,
  }) {
    return UserResponseEntity(
      jwt: jwt ?? this.jwt,
      user: user ?? this.user,
    );
  }
}
