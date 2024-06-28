// To parse this JSON data, do
//
//     final cardIdResponseModel = cardIdResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'card_id_response_model.freezed.dart';
part 'card_id_response_model.g.dart';

CardIdResponseModel cardIdResponseModelFromJson(String str) =>
    CardIdResponseModel.fromJson(json.decode(str));

String cardIdResponseModelToJson(CardIdResponseModel data) => json.encode(data.toJson());

@freezed
class CardIdResponseModel with _$CardIdResponseModel {
  const factory CardIdResponseModel({
    @JsonKey(name: "data") CardIdDataModel? data,
    @JsonKey(name: "meta") CardIdMetaModel? meta,
  }) = _CardIdResponseModel;

  factory CardIdResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CardIdResponseModelFromJson(json);
}

@freezed
class CardIdDataModel with _$CardIdDataModel {
  const factory CardIdDataModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "attributes") CardIdDataAttributesModel? attributes,
  }) = _CardIdDataModel;

  factory CardIdDataModel.fromJson(Map<String, dynamic> json) => _$CardIdDataModelFromJson(json);
}

@freezed
class CardIdDataAttributesModel with _$CardIdDataAttributesModel {
  const factory CardIdDataAttributesModel({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "role") String? role,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "level") String? level,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "publishedAt") DateTime? publishedAt,
    @JsonKey(name: "avatar_card") CardIdDataAttributesAvatarCardModel? avatarCard,
    @JsonKey(name: "quizzes") CardIdDataAttributesQuizzesModel? quizzes,
    @JsonKey(name: "users") CardIdDataAttributesUsersModel? users,
  }) = _CardIdDataAttributesModel;

  factory CardIdDataAttributesModel.fromJson(Map<String, dynamic> json) =>
      _$CardIdDataAttributesModelFromJson(json);
}

@freezed
class CardIdDataAttributesAvatarCardModel with _$CardIdDataAttributesAvatarCardModel {
  const factory CardIdDataAttributesAvatarCardModel({
    @JsonKey(name: "data") CardIdDataAttributesAvatarCardDataModel? data,
  }) = _CardIdDataAttributesAvatarCardModel;

  factory CardIdDataAttributesAvatarCardModel.fromJson(Map<String, dynamic> json) =>
      _$CardIdDataAttributesAvatarCardModelFromJson(json);
}

@freezed
class CardIdDataAttributesAvatarCardDataModel with _$CardIdDataAttributesAvatarCardDataModel {
  const factory CardIdDataAttributesAvatarCardDataModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "attributes") CardIdDataAttributesAvatarCardDataAttributesModel? attributes,
  }) = _CardIdDataAttributesAvatarCardDataModel;

  factory CardIdDataAttributesAvatarCardDataModel.fromJson(Map<String, dynamic> json) =>
      _$CardIdDataAttributesAvatarCardDataModelFromJson(json);
}

@freezed
class CardIdDataAttributesAvatarCardDataAttributesModel
    with _$CardIdDataAttributesAvatarCardDataAttributesModel {
  const factory CardIdDataAttributesAvatarCardDataAttributesModel({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "alternativeText") dynamic alternativeText,
    @JsonKey(name: "caption") dynamic caption,
    @JsonKey(name: "width") int? width,
    @JsonKey(name: "height") int? height,
    @JsonKey(name: "formats") CardIdDataAttributesAvatarCardDataAttributesFormatsModel? formats,
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
  }) = _CardIdDataAttributesAvatarCardDataAttributesModel;

  factory CardIdDataAttributesAvatarCardDataAttributesModel.fromJson(Map<String, dynamic> json) =>
      _$CardIdDataAttributesAvatarCardDataAttributesModelFromJson(json);
}

@freezed
class CardIdDataAttributesAvatarCardDataAttributesFormatsModel
    with _$CardIdDataAttributesAvatarCardDataAttributesFormatsModel {
  const factory CardIdDataAttributesAvatarCardDataAttributesFormatsModel({
    @JsonKey(name: "small") CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel? small,
    @JsonKey(name: "thumbnail")
    CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel? thumbnail,
  }) = _CardIdDataAttributesAvatarCardDataAttributesFormatsModel;

  factory CardIdDataAttributesAvatarCardDataAttributesFormatsModel.fromJson(
          Map<String, dynamic> json) =>
      _$CardIdDataAttributesAvatarCardDataAttributesFormatsModelFromJson(json);
}

@freezed
class CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel
    with _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel {
  const factory CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel({
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
  }) = _CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel;

  factory CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel.fromJson(
          Map<String, dynamic> json) =>
      _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelFromJson(json);
}

@freezed
class CardIdDataAttributesQuizzesModel with _$CardIdDataAttributesQuizzesModel {
  const factory CardIdDataAttributesQuizzesModel({
    @JsonKey(name: "data") List<CardIdDataAttributesQuizzesDataModel>? data,
  }) = _CardIdDataAttributesQuizzesModel;

  factory CardIdDataAttributesQuizzesModel.fromJson(Map<String, dynamic> json) =>
      _$CardIdDataAttributesQuizzesModelFromJson(json);
}

@freezed
class CardIdDataAttributesQuizzesDataModel with _$CardIdDataAttributesQuizzesDataModel {
  const factory CardIdDataAttributesQuizzesDataModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "attributes") CardIdDataAttributesQuizzesDataAttributesModel? attributes,
  }) = _CardIdDataAttributesQuizzesDataModel;

  factory CardIdDataAttributesQuizzesDataModel.fromJson(Map<String, dynamic> json) =>
      _$CardIdDataAttributesQuizzesDataModelFromJson(json);
}

@freezed
class CardIdDataAttributesQuizzesDataAttributesModel
    with _$CardIdDataAttributesQuizzesDataAttributesModel {
  const factory CardIdDataAttributesQuizzesDataAttributesModel({
    @JsonKey(name: "quiz_question") String? quizQuestion,
    @JsonKey(name: "option_one") String? optionOne,
    @JsonKey(name: "option_two") String? optionTwo,
    @JsonKey(name: "option_three") String? optionThree,
    @JsonKey(name: "option_four") String? optionFour,
    @JsonKey(name: "correct_option") String? correctOption,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "publishedAt") DateTime? publishedAt,
    @JsonKey(name: "score") int? score,
  }) = _CardIdDataAttributesQuizzesDataAttributesModel;

  factory CardIdDataAttributesQuizzesDataAttributesModel.fromJson(Map<String, dynamic> json) =>
      _$CardIdDataAttributesQuizzesDataAttributesModelFromJson(json);
}

@freezed
class CardIdDataAttributesUsersModel with _$CardIdDataAttributesUsersModel {
  const factory CardIdDataAttributesUsersModel({
    @JsonKey(name: "data") List<CardIdDataAttributesUsersDataModel>? data,
  }) = _CardIdDataAttributesUsersModel;

  factory CardIdDataAttributesUsersModel.fromJson(Map<String, dynamic> json) =>
      _$CardIdDataAttributesUsersModelFromJson(json);
}

@freezed
class CardIdDataAttributesUsersDataModel with _$CardIdDataAttributesUsersDataModel {
  const factory CardIdDataAttributesUsersDataModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "attributes") CardIdDataAttributesUsersDataAttributesModel? attributes,
  }) = _CardIdDataAttributesUsersDataModel;

  factory CardIdDataAttributesUsersDataModel.fromJson(Map<String, dynamic> json) =>
      _$CardIdDataAttributesUsersDataModelFromJson(json);
}

@freezed
class CardIdDataAttributesUsersDataAttributesModel
    with _$CardIdDataAttributesUsersDataAttributesModel {
  const factory CardIdDataAttributesUsersDataAttributesModel({
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "provider") String? provider,
    @JsonKey(name: "confirmed") bool? confirmed,
    @JsonKey(name: "blocked") bool? blocked,
    @JsonKey(name: "collection_card") int? collectionCard,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "scores") int? scores,
  }) = _CardIdDataAttributesUsersDataAttributesModel;

  factory CardIdDataAttributesUsersDataAttributesModel.fromJson(Map<String, dynamic> json) =>
      _$CardIdDataAttributesUsersDataAttributesModelFromJson(json);
}

@freezed
class CardIdMetaModel with _$CardIdMetaModel {
  const factory CardIdMetaModel() = _CardIdMetaModel;

  factory CardIdMetaModel.fromJson(Map<String, dynamic> json) => _$CardIdMetaModelFromJson(json);
}
