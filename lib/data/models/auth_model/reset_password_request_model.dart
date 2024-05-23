// To parse this JSON data, do
//
//     final resetPasswordRequestModel = resetPasswordRequestModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'reset_password_request_model.freezed.dart';
part 'reset_password_request_model.g.dart';

ResetPasswordRequestModel resetPasswordRequestModelFromJson(String str) =>
    ResetPasswordRequestModel.fromJson(json.decode(str));

String resetPasswordRequestModelToJson(ResetPasswordRequestModel data) =>
    json.encode(data.toJson());

@freezed
class ResetPasswordRequestModel with _$ResetPasswordRequestModel {
  const factory ResetPasswordRequestModel({
    @JsonKey(name: "password") String? password,
    @JsonKey(name: "passwordConfirmation") String? passwordConfirmation,
    @JsonKey(name: "code") String? code,
  }) = _ResetPasswordRequestModel;

  factory ResetPasswordRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordRequestModelFromJson(json);
}
