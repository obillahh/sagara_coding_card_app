// To parse this JSON data, do
//
//     final emailConfirmationResponseEntity = emailConfirmationResponseEntityFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'email_confirmation_response_entity.freezed.dart';
part 'email_confirmation_response_entity.g.dart';

EmailConfirmationResponseEntity emailConfirmationResponseEntityFromJson(String str) =>
    EmailConfirmationResponseEntity.fromJson(json.decode(str));

String emailConfirmationResponseEntityToJson(EmailConfirmationResponseEntity data) =>
    json.encode(data.toJson());

@freezed
class EmailConfirmationResponseEntity with _$EmailConfirmationResponseEntity {
  const factory EmailConfirmationResponseEntity({
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "sent") required bool sent,
  }) = _EmailConfirmationResponseEntity;

  factory EmailConfirmationResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$EmailConfirmationResponseEntityFromJson(json);
}
