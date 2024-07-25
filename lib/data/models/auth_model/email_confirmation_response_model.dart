// To parse this JSON data, do
//
//     final emailConfirmationResponseModel = emailConfirmationResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'email_confirmation_response_model.freezed.dart';
part 'email_confirmation_response_model.g.dart';

EmailConfirmationResponseModel emailConfirmationResponseModelFromJson(String str) =>
    EmailConfirmationResponseModel.fromJson(json.decode(str));

String emailConfirmationResponseModelToJson(EmailConfirmationResponseModel data) =>
    json.encode(data.toJson());

@freezed
class EmailConfirmationResponseModel with _$EmailConfirmationResponseModel {
  const factory EmailConfirmationResponseModel({
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "sent") bool? sent,
  }) = _EmailConfirmationResponseModel;

  factory EmailConfirmationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$EmailConfirmationResponseModelFromJson(json);
}
