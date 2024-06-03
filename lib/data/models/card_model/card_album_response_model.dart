// To parse this JSON data, do
//
//     final cardAlbumResponseModel = cardAlbumResponseModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:sagara_coding_card_application/data/models/auth_model/user_model/user_data_response_model.dart';

part 'card_album_response_model.freezed.dart';
part 'card_album_response_model.g.dart';

List<CardAlbumResponseModel> cardAlbumResponseModelFromJson(String str) =>
    List<CardAlbumResponseModel>.from(
        json.decode(str).map((x) => CardAlbumResponseModel.fromJson(x)));

String cardAlbumResponseModelToJson(List<CardAlbumResponseModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class CardAlbumResponseModel with _$CardAlbumResponseModel {
  const factory CardAlbumResponseModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "role") String? role,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "level") String? level,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "publishedAt") DateTime? publishedAt,
    @JsonKey(name: "users") List<UserDataResponseModel>? users,
    @JsonKey(name: "avatar_card") DataAvatarCardModel? avatarCard,
    @JsonKey(name: "status") String? status,
  }) = _CardAlbumResponseModel;

  factory CardAlbumResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CardAlbumResponseModelFromJson(json);
}

@freezed
class DataAvatarCardModel with _$DataAvatarCardModel {
  const factory DataAvatarCardModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "alternativeText") dynamic alternativeText,
    @JsonKey(name: "caption") dynamic caption,
    @JsonKey(name: "width") int? width,
    @JsonKey(name: "height") int? height,
    @JsonKey(name: "formats") DataFormatsAvatarCardModel? formats,
    @JsonKey(name: "hash") String? hash,
    @JsonKey(name: "ext") String? ext,
    @JsonKey(name: "mime") String? mime,
    @JsonKey(name: "size") double? size,
    @JsonKey(name: "url") String? url,
    @JsonKey(name: "previewUrl") dynamic previewUrl,
    @JsonKey(name: "provider") String? provider,
    @JsonKey(name: "provider_metadata") dynamic providerMetadata,
    @JsonKey(name: "folderPath") String? folderPath,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "isUrlSigned") bool? isUrlSigned,
  }) = _DataAvatarCardModel;

  factory DataAvatarCardModel.fromJson(Map<String, dynamic> json) =>
      _$DataAvatarCardModelFromJson(json);
}

@freezed
class DataFormatsAvatarCardModel with _$DataFormatsAvatarCardModel {
  const factory DataFormatsAvatarCardModel({
    @JsonKey(name: "small") DataSizeFormatsAvatarCardModel? small,
    @JsonKey(name: "thumbnail") DataSizeFormatsAvatarCardModel? thumbnail,
  }) = _DataFormatsAvatarCardModel;

  factory DataFormatsAvatarCardModel.fromJson(Map<String, dynamic> json) =>
      _$DataFormatsAvatarCardModelFromJson(json);
}

@freezed
class DataSizeFormatsAvatarCardModel with _$DataSizeFormatsAvatarCardModel {
  const factory DataSizeFormatsAvatarCardModel({
    @JsonKey(name: "ext") String? ext,
    @JsonKey(name: "url") String? url,
    @JsonKey(name: "hash") String? hash,
    @JsonKey(name: "mime") String? mime,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "path") dynamic path,
    @JsonKey(name: "size") double? size,
    @JsonKey(name: "width") int? width,
    @JsonKey(name: "height") int? height,
    @JsonKey(name: "isUrlSigned") bool? isUrlSigned,
  }) = _DataSizeFormatsAvatarCardModel;

  factory DataSizeFormatsAvatarCardModel.fromJson(Map<String, dynamic> json) =>
      _$DataSizeFormatsAvatarCardModelFromJson(json);
}
