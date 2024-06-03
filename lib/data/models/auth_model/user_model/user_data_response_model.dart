// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_data_response_model.freezed.dart';
part 'user_data_response_model.g.dart';

UserDataResponseModel userDataResponseModelFromJson(String str) =>
    UserDataResponseModel.fromJson(json.decode(str));

String userDataResponseModelToJson(UserDataResponseModel data) => json.encode(data.toJson());

@freezed
class UserDataResponseModel with _$UserDataResponseModel {
  const factory UserDataResponseModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "provider") String? provider,
    @JsonKey(name: "password") String? password,
    @JsonKey(name: "resetPasswordToken") String? resetPasswordToken,
    @JsonKey(name: "confirmationToken") dynamic confirmationToken,
    @JsonKey(name: "confirmed") bool? confirmed,
    @JsonKey(name: "blocked") bool? blocked,
    @JsonKey(name: "collection_card") int? collectionCard,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "scores") int? scores,
  }) = _UserDataResponseModel;

  factory UserDataResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataResponseModelFromJson(json);
}
