import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_id_response_model.freezed.dart';
part 'user_id_response_model.g.dart';

UserIdResponseModel userIdResponseModelFromJson(String str) =>
    UserIdResponseModel.fromJson(json.decode(str));

String userIdResponseModelToJson(UserIdResponseModel data) => json.encode(data.toJson());

@freezed
class UserIdResponseModel with _$UserIdResponseModel {
  const factory UserIdResponseModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "provider") String? provider,
    @JsonKey(name: "confirmed") bool? confirmed,
    @JsonKey(name: "blocked") bool? blocked,
    @JsonKey(name: "collection_card") int? collectionCard,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "scores") int? scores,
    @JsonKey(name: "avatar") UserIdAvatarResponseModel? avatar,
  }) = _UserIdResponseModel;

  factory UserIdResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserIdResponseModelFromJson(json);
}

@freezed
class UserIdAvatarResponseModel with _$UserIdAvatarResponseModel {
  const factory UserIdAvatarResponseModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "alternativeText") dynamic alternativeText,
    @JsonKey(name: "caption") dynamic caption,
    @JsonKey(name: "width") int? width,
    @JsonKey(name: "height") int? height,
    @JsonKey(name: "formats") UserIdAvatarFormatsResponseModel? formats,
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
    @JsonKey(name: "isUrlSigned") bool? isUrlSigned,
  }) = _UserIdAvatarResponseModel;

  factory UserIdAvatarResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserIdAvatarResponseModelFromJson(json);
}

@freezed
class UserIdAvatarFormatsResponseModel with _$UserIdAvatarFormatsResponseModel {
  const factory UserIdAvatarFormatsResponseModel({
    @JsonKey(name: "small") UserIdAvatarFormatsSizeResponseModel? small,
    @JsonKey(name: "medium") UserIdAvatarFormatsSizeResponseModel? medium,
    @JsonKey(name: "thumbnail") UserIdAvatarFormatsSizeResponseModel? thumbnail,
  }) = _UserIdAvatarFormatsResponseModel;

  factory UserIdAvatarFormatsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserIdAvatarFormatsResponseModelFromJson(json);
}

@freezed
class UserIdAvatarFormatsSizeResponseModel with _$UserIdAvatarFormatsSizeResponseModel {
  const factory UserIdAvatarFormatsSizeResponseModel({
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
  }) = _UserIdAvatarFormatsSizeResponseModel;

  factory UserIdAvatarFormatsSizeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserIdAvatarFormatsSizeResponseModelFromJson(json);
}
