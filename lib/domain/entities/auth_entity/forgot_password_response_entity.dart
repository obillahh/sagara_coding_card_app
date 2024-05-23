// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'forgot_password_response_entity.freezed.dart';
part 'forgot_password_response_entity.g.dart';

ForgotPasswordResponseEntity forgotPasswordResponseEntityFromJson(String str) =>
    ForgotPasswordResponseEntity.fromJson(json.decode(str));

String forgotPasswordResponseEntityToJson(ForgotPasswordResponseEntity data) =>
    json.encode(data.toJson());

@freezed
class ForgotPasswordResponseEntity with _$ForgotPasswordResponseEntity {
  const factory ForgotPasswordResponseEntity({
    @JsonKey(name: "ok") required bool ok,
  }) = _ForgotPasswordResponseEntity;

  factory ForgotPasswordResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordResponseEntityFromJson(json);
}
