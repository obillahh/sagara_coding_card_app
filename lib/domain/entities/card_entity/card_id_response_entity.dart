// To parse this JSON data, do
//
//     final cardIdResponseEntity = cardIdResponseEntityFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'card_id_response_entity.freezed.dart';
part 'card_id_response_entity.g.dart';

CardIdResponseEntity cardIdResponseEntityFromJson(String str) =>
    CardIdResponseEntity.fromJson(json.decode(str));

String cardIdResponseEntityToJson(CardIdResponseEntity data) => json.encode(data.toJson());

@freezed
class CardIdResponseEntity with _$CardIdResponseEntity {
  const factory CardIdResponseEntity({
    @JsonKey(name: "data") required CardIdDataEntity data,
    @JsonKey(name: "meta") required CardIdMetaEntity meta,
  }) = _CardIdResponseEntity;

  factory CardIdResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$CardIdResponseEntityFromJson(json);
}

@freezed
class CardIdDataEntity with _$CardIdDataEntity {
  const factory CardIdDataEntity({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "attributes") required CardIdDataAttributesEntity attributes,
  }) = _CardIdDataEntity;

  factory CardIdDataEntity.fromJson(Map<String, dynamic> json) => _$CardIdDataEntityFromJson(json);
}

@freezed
class CardIdDataAttributesEntity with _$CardIdDataAttributesEntity {
  const factory CardIdDataAttributesEntity({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "role") required String role,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "level") required String level,
    @JsonKey(name: "createdAt") required DateTime createdAt,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
    @JsonKey(name: "publishedAt") required DateTime publishedAt,
    @JsonKey(name: "avatar_card") required CardIdDataAttributesAvatarCardEntity avatarCard,
    @JsonKey(name: "quizzes") required CardIdDataAttributesQuizzesEntity quizzes,
    @JsonKey(name: "users") required CardIdDataAttributesUsersEntity users,
  }) = _CardIdDataAttributesEntity;

  factory CardIdDataAttributesEntity.fromJson(Map<String, dynamic> json) =>
      _$CardIdDataAttributesEntityFromJson(json);
}

@freezed
class CardIdDataAttributesAvatarCardEntity with _$CardIdDataAttributesAvatarCardEntity {
  const factory CardIdDataAttributesAvatarCardEntity({
    @JsonKey(name: "data") required CardIdDataAttributesAvatarCardDataEntity data,
  }) = _CardIdDataAttributesAvatarCardEntity;

  factory CardIdDataAttributesAvatarCardEntity.fromJson(Map<String, dynamic> json) =>
      _$CardIdDataAttributesAvatarCardEntityFromJson(json);
}

@freezed
class CardIdDataAttributesAvatarCardDataEntity with _$CardIdDataAttributesAvatarCardDataEntity {
  const factory CardIdDataAttributesAvatarCardDataEntity({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "attributes")
    required CardIdDataAttributesAvatarCardDataAttributesEntity attributes,
  }) = _CardIdDataAttributesAvatarCardDataEntity;

  factory CardIdDataAttributesAvatarCardDataEntity.fromJson(Map<String, dynamic> json) =>
      _$CardIdDataAttributesAvatarCardDataEntityFromJson(json);
}

@freezed
class CardIdDataAttributesAvatarCardDataAttributesEntity
    with _$CardIdDataAttributesAvatarCardDataAttributesEntity {
  const factory CardIdDataAttributesAvatarCardDataAttributesEntity({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "alternativeText") required dynamic alternativeText,
    @JsonKey(name: "caption") required dynamic caption,
    @JsonKey(name: "width") required int width,
    @JsonKey(name: "height") required int height,
    @JsonKey(name: "formats")
    required CardIdDataAttributesAvatarCardDataAttributesFormatsEntity formats,
    @JsonKey(name: "hash") required String hash,
    @JsonKey(name: "ext") required String ext,
    @JsonKey(name: "mime") required String mime,
    @JsonKey(name: "size") required double size,
    @JsonKey(name: "url") required String url,
    @JsonKey(name: "previewUrl") required dynamic previewUrl,
    @JsonKey(name: "provider") required String provider,
    @JsonKey(name: "provider_metadata") required dynamic providerMetadata,
    @JsonKey(name: "createdAt") required DateTime createdAt,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
    @JsonKey(name: "isUrlSigned") required bool isUrlSigned,
  }) = _CardIdDataAttributesAvatarCardDataAttributesEntity;

  factory CardIdDataAttributesAvatarCardDataAttributesEntity.fromJson(Map<String, dynamic> json) =>
      _$CardIdDataAttributesAvatarCardDataAttributesEntityFromJson(json);
}

@freezed
class CardIdDataAttributesAvatarCardDataAttributesFormatsEntity
    with _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntity {
  const factory CardIdDataAttributesAvatarCardDataAttributesFormatsEntity({
    @JsonKey(name: "small")
    required CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity small,
    @JsonKey(name: "thumbnail")
    required CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity thumbnail,
  }) = _CardIdDataAttributesAvatarCardDataAttributesFormatsEntity;

  factory CardIdDataAttributesAvatarCardDataAttributesFormatsEntity.fromJson(
          Map<String, dynamic> json) =>
      _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityFromJson(json);
}

@freezed
class CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity
    with _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity {
  const factory CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity({
    @JsonKey(name: "ext") required String ext,
    @JsonKey(name: "url") required String url,
    @JsonKey(name: "hash") required String hash,
    @JsonKey(name: "mime") required String mime,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "path") required dynamic path,
    @JsonKey(name: "size") required double size,
    @JsonKey(name: "width") required int width,
    @JsonKey(name: "height") required int height,
    @JsonKey(name: "isUrlSigned") required bool isUrlSigned,
  }) = _CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity;

  factory CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity.fromJson(
          Map<String, dynamic> json) =>
      _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityFromJson(json);
}

@freezed
class CardIdDataAttributesQuizzesEntity with _$CardIdDataAttributesQuizzesEntity {
  const factory CardIdDataAttributesQuizzesEntity({
    @JsonKey(name: "data") required List<CardIdDataAttributesQuizzesDataEntity> data,
  }) = _CardIdDataAttributesQuizzesEntity;

  factory CardIdDataAttributesQuizzesEntity.fromJson(Map<String, dynamic> json) =>
      _$CardIdDataAttributesQuizzesEntityFromJson(json);
}

@freezed
class CardIdDataAttributesQuizzesDataEntity with _$CardIdDataAttributesQuizzesDataEntity {
  const factory CardIdDataAttributesQuizzesDataEntity({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "attributes")
    required CardIdDataAttributesQuizzesDataAttributesEntity attributes,
  }) = _CardIdDataAttributesQuizzesDataEntity;

  factory CardIdDataAttributesQuizzesDataEntity.fromJson(Map<String, dynamic> json) =>
      _$CardIdDataAttributesQuizzesDataEntityFromJson(json);
}

@freezed
class CardIdDataAttributesQuizzesDataAttributesEntity
    with _$CardIdDataAttributesQuizzesDataAttributesEntity {
  const factory CardIdDataAttributesQuizzesDataAttributesEntity({
    @JsonKey(name: "quiz_question") required String quizQuestion,
    @JsonKey(name: "option_one") required String optionOne,
    @JsonKey(name: "option_two") required String optionTwo,
    @JsonKey(name: "option_three") required String optionThree,
    @JsonKey(name: "option_four") required String optionFour,
    @JsonKey(name: "correct_option") required String correctOption,
    @JsonKey(name: "createdAt") required DateTime createdAt,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
    @JsonKey(name: "publishedAt") required DateTime publishedAt,
    @JsonKey(name: "score") required int score,
  }) = _CardIdDataAttributesQuizzesDataAttributesEntity;

  factory CardIdDataAttributesQuizzesDataAttributesEntity.fromJson(Map<String, dynamic> json) =>
      _$CardIdDataAttributesQuizzesDataAttributesEntityFromJson(json);
}

@freezed
class CardIdDataAttributesUsersEntity with _$CardIdDataAttributesUsersEntity {
  const factory CardIdDataAttributesUsersEntity({
    @JsonKey(name: "data") required List<CardIdDataAttributesUsersDataEntity> data,
  }) = _CardIdDataAttributesUsersEntity;

  factory CardIdDataAttributesUsersEntity.fromJson(Map<String, dynamic> json) =>
      _$CardIdDataAttributesUsersEntityFromJson(json);
}

@freezed
class CardIdDataAttributesUsersDataEntity with _$CardIdDataAttributesUsersDataEntity {
  const factory CardIdDataAttributesUsersDataEntity({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "attributes") required CardIdDataAttributesUsersDataAttributesEntity attributes,
  }) = _CardIdDataAttributesUsersDataEntity;

  factory CardIdDataAttributesUsersDataEntity.fromJson(Map<String, dynamic> json) =>
      _$CardIdDataAttributesUsersDataEntityFromJson(json);
}

@freezed
class CardIdDataAttributesUsersDataAttributesEntity
    with _$CardIdDataAttributesUsersDataAttributesEntity {
  const factory CardIdDataAttributesUsersDataAttributesEntity({
    @JsonKey(name: "username") required String username,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "provider") required String provider,
    @JsonKey(name: "confirmed") required bool confirmed,
    @JsonKey(name: "blocked") required bool blocked,
    @JsonKey(name: "collection_card") required int collectionCard,
    @JsonKey(name: "createdAt") required DateTime createdAt,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
    @JsonKey(name: "scores") required int scores,
  }) = _CardIdDataAttributesUsersDataAttributesEntity;

  factory CardIdDataAttributesUsersDataAttributesEntity.fromJson(Map<String, dynamic> json) =>
      _$CardIdDataAttributesUsersDataAttributesEntityFromJson(json);
}

@freezed
class CardIdMetaEntity with _$CardIdMetaEntity {
  const factory CardIdMetaEntity() = _CardIdMetaEntity;

  factory CardIdMetaEntity.fromJson(Map<String, dynamic> json) => _$CardIdMetaEntityFromJson(json);
}
