import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_id_response_entity.freezed.dart';
part 'user_id_response_entity.g.dart';

UserIdResponseEntity userIdResponseEntityFromJson(String str) =>
    UserIdResponseEntity.fromJson(json.decode(str));

String userIdResponseEntityToJson(UserIdResponseEntity data) => json.encode(data.toJson());

@freezed
class UserIdResponseEntity with _$UserIdResponseEntity {
  const factory UserIdResponseEntity({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "username") required String username,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "collection_card") required int collectionCard,
    @JsonKey(name: "scores") required int scores,
    @JsonKey(name: "avatar") required UserIdAvatarResponseEntity avatar,
  }) = _UserIdResponseEntity;

  factory UserIdResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$UserIdResponseEntityFromJson(json);
}

@freezed
class UserIdAvatarResponseEntity with _$UserIdAvatarResponseEntity {
  const factory UserIdAvatarResponseEntity({
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
    @JsonKey(name: "isUrlSigned") required bool isUrlSigned,
  }) = _UserIdAvatarResponseEntity;

  factory UserIdAvatarResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$UserIdAvatarResponseEntityFromJson(json);
}
