// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'card_album_response_entity.freezed.dart';
part 'card_album_response_entity.g.dart';

List<CardAlbumResponseEntity> cardAlbumResponseEntityFromJson(String str) =>
    List<CardAlbumResponseEntity>.from(
        json.decode(str).map((x) => CardAlbumResponseEntity.fromJson(x)));

String cardAlbumResponseEntityToJson(List<CardAlbumResponseEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class CardAlbumResponseEntity with _$CardAlbumResponseEntity {
  const factory CardAlbumResponseEntity({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "role") required String role,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "level") required String level,
    @JsonKey(name: "avatar_card") required DataAvatarCardEntity avatarCard,
    @JsonKey(name: "status") required String status,
  }) = _CardAlbumResponseEntity;

  factory CardAlbumResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$CardAlbumResponseEntityFromJson(json);
}

@freezed
class DataAvatarCardEntity with _$DataAvatarCardEntity {
  const factory DataAvatarCardEntity({
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
    @JsonKey(name: "folderPath") required String folderPath,
    @JsonKey(name: "createdAt") required DateTime createdAt,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
    @JsonKey(name: "isUrlSigned") required bool isUrlSigned,
  }) = _DataAvatarCardEntity;

  factory DataAvatarCardEntity.fromJson(Map<String, dynamic> json) =>
      _$DataAvatarCardEntityFromJson(json);
}
