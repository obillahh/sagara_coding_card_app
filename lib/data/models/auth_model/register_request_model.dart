class RegisterRequestModel {
  final String email;
  final String password;
  final String username;

  RegisterRequestModel({
    required this.email,
    required this.password,
    required this.username,
  });

  factory RegisterRequestModel.fromJson(Map<String, dynamic> json) =>
      RegisterRequestModel(
        email: json["email"],
        password: json["password"],
        username: json["username"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "username": username,
      };
}
