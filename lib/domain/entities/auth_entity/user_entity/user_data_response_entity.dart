// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_data_response_entity.freezed.dart';
part 'user_data_response_entity.g.dart';

UserDataResponseEntity userDataResponseEntityFromJson(String str) =>
    UserDataResponseEntity.fromJson(json.decode(str));

String userDataResponseEntityToJson(UserDataResponseEntity data) => json.encode(data.toJson());

@freezed
class UserDataResponseEntity with _$UserDataResponseEntity {
  const factory UserDataResponseEntity({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "username") required String username,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "collection_card") required int collectionCard,
    @JsonKey(name: "scores") required int scores,
  }) = _UserDataResponseEntity;

  factory UserDataResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$UserDataResponseEntityFromJson(json);
}
