// To parse this JSON data, do
//
//     final updateScoreResponseModel = updateScoreResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'update_score_response_model.freezed.dart';
part 'update_score_response_model.g.dart';

UpdateScoreResponseModel updateScoreResponseModelFromJson(String str) =>
    UpdateScoreResponseModel.fromJson(json.decode(str));

String updateScoreResponseModelToJson(UpdateScoreResponseModel data) => json.encode(data.toJson());

@freezed
class UpdateScoreResponseModel with _$UpdateScoreResponseModel {
  const factory UpdateScoreResponseModel({
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
  }) = _UpdateScoreResponseModel;

  factory UpdateScoreResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateScoreResponseModelFromJson(json);
}
