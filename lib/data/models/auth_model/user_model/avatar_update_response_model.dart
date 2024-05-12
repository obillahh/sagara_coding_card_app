// To parse this JSON data, do
//
//     final avatarUpdateResponseModel = avatarUpdateResponseModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'avatar_update_response_model.freezed.dart';
part 'avatar_update_response_model.g.dart';

AvatarUpdateResponseModel avatarUpdateResponseModelFromJson(String str) =>
    AvatarUpdateResponseModel.fromJson(json.decode(str));

String avatarUpdateResponseModelToJson(AvatarUpdateResponseModel data) =>
    json.encode(data.toJson());

@freezed
class AvatarUpdateResponseModel with _$AvatarUpdateResponseModel {
  const factory AvatarUpdateResponseModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "alternativeText") dynamic alternativeText,
    @JsonKey(name: "caption") dynamic caption,
    @JsonKey(name: "width") int? width,
    @JsonKey(name: "height") int? height,
    @JsonKey(name: "formats") FormatsAvatarUpdateResponseModel? formats,
    @JsonKey(name: "hash") String? hash,
    @JsonKey(name: "ext") String? ext,
    @JsonKey(name: "mime") String? mime,
    @JsonKey(name: "size") double? size,
    @JsonKey(name: "url") String? url,
    @JsonKey(name: "previewUrl") dynamic previewUrl,
    @JsonKey(name: "provider") String? provider,
    @JsonKey(name: "provider_metadata") dynamic providerMetadata,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
  }) = _AvatarUpdateResponseModel;

  factory AvatarUpdateResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AvatarUpdateResponseModelFromJson(json);
}

@freezed
class FormatsAvatarUpdateResponseModel with _$FormatsAvatarUpdateResponseModel {
  const factory FormatsAvatarUpdateResponseModel({
    @JsonKey(name: "small") SizeFormatAvatarUpdateResponseModel? small,
    @JsonKey(name: "medium") SizeFormatAvatarUpdateResponseModel? medium,
    @JsonKey(name: "thumbnail") SizeFormatAvatarUpdateResponseModel? thumbnail,
  }) = _FormatsAvatarUpdateResponseModel;

  factory FormatsAvatarUpdateResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FormatsAvatarUpdateResponseModelFromJson(json);
}

@freezed
class SizeFormatAvatarUpdateResponseModel with _$SizeFormatAvatarUpdateResponseModel {
  const factory SizeFormatAvatarUpdateResponseModel({
    @JsonKey(name: "ext") String? ext,
    @JsonKey(name: "url") String? url,
    @JsonKey(name: "hash") String? hash,
    @JsonKey(name: "mime") String? mime,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "path") dynamic path,
    @JsonKey(name: "size") double? size,
    @JsonKey(name: "width") int? width,
    @JsonKey(name: "height") int? height,
  }) = _SizeFormatAvatarUpdateResponseModel;

  factory SizeFormatAvatarUpdateResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SizeFormatAvatarUpdateResponseModelFromJson(json);
}
