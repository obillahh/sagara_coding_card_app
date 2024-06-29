// To parse this JSON data, do
//
//     final updateScoreResponseEntity = updateScoreResponseEntityFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'update_score_response_entity.freezed.dart';
part 'update_score_response_entity.g.dart';

UpdateScoreResponseEntity updateScoreResponseEntityFromJson(String str) =>
    UpdateScoreResponseEntity.fromJson(json.decode(str));

String updateScoreResponseEntityToJson(UpdateScoreResponseEntity data) =>
    json.encode(data.toJson());

@freezed
class UpdateScoreResponseEntity with _$UpdateScoreResponseEntity {
  const factory UpdateScoreResponseEntity({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "username") required String username,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "provider") required String provider,
    @JsonKey(name: "password") required String password,
    @JsonKey(name: "resetPasswordToken") required String resetPasswordToken,
    @JsonKey(name: "confirmationToken") required dynamic confirmationToken,
    @JsonKey(name: "confirmed") required bool confirmed,
    @JsonKey(name: "blocked") required bool blocked,
    @JsonKey(name: "collection_card") required int collectionCard,
    @JsonKey(name: "createdAt") required DateTime createdAt,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
    @JsonKey(name: "scores") required int scores,
  }) = _UpdateScoreResponseEntity;

  factory UpdateScoreResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$UpdateScoreResponseEntityFromJson(json);
}
