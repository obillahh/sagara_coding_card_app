// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'login_request_model.freezed.dart';
part 'login_request_model.g.dart';

LoginRequestModel loginRequestModelFromJson(String str) =>
    LoginRequestModel.fromJson(json.decode(str));

String loginRequestModelToJson(LoginRequestModel data) => json.encode(data.toJson());

@freezed
class LoginRequestModel with _$LoginRequestModel {
  const factory LoginRequestModel({
    @JsonKey(name: "identifier") required String identifier,
    @JsonKey(name: "password") required String password,
  }) = _LoginRequestModel;

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestModelFromJson(json);
}
