// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'avatar_update_request_model.freezed.dart';
part 'avatar_update_request_model.g.dart';

AvatarUpdateRequestModel avatarUpdateRequestModelFromJson(String str) =>
    AvatarUpdateRequestModel.fromJson(json.decode(str));

String avatarUpdateRequestModelToJson(AvatarUpdateRequestModel data) => json.encode(data.toJson());

@freezed
class AvatarUpdateRequestModel with _$AvatarUpdateRequestModel {
  const factory AvatarUpdateRequestModel({
    @JsonKey(name: "ref") required String ref,
    @JsonKey(name: "refId") required int refId,
    @JsonKey(name: "field") required String field,
    @JsonKey(name: "files") required String files,
  }) = _AvatarUpdateRequestModel;

  factory AvatarUpdateRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AvatarUpdateRequestModelFromJson(json);
}
