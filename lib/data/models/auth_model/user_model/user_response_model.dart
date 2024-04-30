import 'user_data_response_model.dart';

class UserResponseModel {
  String? jwt;
  UserDataResponseModel? user;

  UserResponseModel({
    this.jwt,
    this.user,
  });

  factory UserResponseModel.fromJson(Map<String, dynamic> json) => UserResponseModel(
        jwt: json["jwt"],
        user: json["user"] == null ? null : UserDataResponseModel.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "jwt": jwt,
        "user": user?.toJson(),
      };
}
