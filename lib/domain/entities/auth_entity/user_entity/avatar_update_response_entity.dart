// To parse this JSON data, do
//
//     final avatarUpdateResponseEntity = avatarUpdateResponseEntityFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'avatar_update_response_entity.freezed.dart';
part 'avatar_update_response_entity.g.dart';

AvatarUpdateResponseEntity avatarUpdateResponseEntityFromJson(String str) =>
    AvatarUpdateResponseEntity.fromJson(json.decode(str));

String avatarUpdateResponseEntityToJson(AvatarUpdateResponseEntity data) =>
    json.encode(data.toJson());

@freezed
class AvatarUpdateResponseEntity with _$AvatarUpdateResponseEntity {
  const factory AvatarUpdateResponseEntity({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "alternativeText") required dynamic alternativeText,
    @JsonKey(name: "caption") required dynamic caption,
    @JsonKey(name: "width") required int width,
    @JsonKey(name: "height") required int height,
    @JsonKey(name: "hash") required String hash,
    @JsonKey(name: "ext") required String ext,
    @JsonKey(name: "mime") required String mime,
    @JsonKey(name: "size") required double size,
    @JsonKey(name: "url") required String url,
    @JsonKey(name: "previewUrl") required dynamic previewUrl,
    @JsonKey(name: "provider") required String provider,
    @JsonKey(name: "provider_metadata") required dynamic providerMetadata,
  }) = _AvatarUpdateResponseEntity;

  factory AvatarUpdateResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$AvatarUpdateResponseEntityFromJson(json);
}
