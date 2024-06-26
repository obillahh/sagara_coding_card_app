import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sagara_coding_card_application/data/data_sources/remote/card_remote_data_source.dart';
import 'package:sagara_coding_card_application/data/models/card_model/card_id_response_model.dart';
import 'package:sagara_coding_card_application/data/models/card_model/cards_list_response_model.dart';
import 'package:sagara_coding_card_application/data/models/card_model/check_card_request_model.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/user_entity/user_data_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/card_entity/card_album_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/card_entity/card_id_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/card_entity/card_list_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/card_entity/check_card_response_entity.dart';
import 'package:sagara_coding_card_application/domain/repositories/card_repository.dart';

class CardImplRepository extends CardRepository {
  final CardRemoteDataSource cardRemoteDataSource;

  CardImplRepository({
    required this.cardRemoteDataSource,
  });

  @override
  Future<List<CardListDataEntity>?> getListCards() async {
    final response = await cardRemoteDataSource.getListCard();
    if (response.data == null) {
      return null;
    }
    final data = CardResponseEntity(
      data: List<CardListDataModel>.from(response.data ?? [])
          .map(
            (e) => CardListDataEntity(
              id: e.id ?? 0,
              attributes: CardDataAttributesEntity(
                name: e.attributes?.name ?? '',
                role: e.attributes?.role ?? '',
                description: e.attributes?.description ?? '',
                level: e.attributes?.level ?? '',
                createdAt: e.attributes?.createdAt ?? DateTime.now(),
                updatedAt: e.attributes?.updatedAt ?? DateTime.now(),
                publishedAt: e.attributes?.publishedAt ?? DateTime.now(),
                avatarCard: AvatarCardEntity(
                  data: AvatarCardDataEntity(
                    id: e.attributes?.avatarCard?.data?.id ?? 0,
                    attributes: AvatarCardDataAttributesEntity(
                      name: e.attributes?.avatarCard?.data?.attributes?.name ?? '',
                      alternativeText:
                          e.attributes?.avatarCard?.data?.attributes?.alternativeText ?? '',
                      caption: e.attributes?.avatarCard?.data?.attributes?.caption ?? '',
                      width: e.attributes?.avatarCard?.data?.attributes?.width ?? 0,
                      height: e.attributes?.avatarCard?.data?.attributes?.height ?? 0,
                      formats: AvatarCardDataAttributeFormatsEntity(
                        small: FormatDataEntity(
                          ext:
                              e.attributes?.avatarCard?.data?.attributes?.formats?.small?.ext ?? '',
                          url:
                              e.attributes?.avatarCard?.data?.attributes?.formats?.small?.url ?? '',
                          hash: e.attributes?.avatarCard?.data?.attributes?.formats?.small?.hash ??
                              '',
                          mime: e.attributes?.avatarCard?.data?.attributes?.formats?.small?.mime ??
                              '',
                          name: e.attributes?.avatarCard?.data?.attributes?.formats?.small?.name ??
                              '',
                          path: e.attributes?.avatarCard?.data?.attributes?.formats?.small?.path ??
                              '',
                          size:
                              e.attributes?.avatarCard?.data?.attributes?.formats?.small?.size ?? 0,
                          width:
                              e.attributes?.avatarCard?.data?.attributes?.formats?.small?.width ??
                                  0,
                          height:
                              e.attributes?.avatarCard?.data?.attributes?.formats?.small?.height ??
                                  0,
                        ),
                        thumbnail: FormatDataEntity(
                          ext:
                              e.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail?.ext ??
                                  '',
                          url:
                              e.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail?.url ??
                                  '',
                          hash: e.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                                  ?.hash ??
                              '',
                          mime: e.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                                  ?.mime ??
                              '',
                          name: e.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                                  ?.name ??
                              '',
                          path: e.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                                  ?.path ??
                              '',
                          size: e.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                                  ?.size ??
                              0,
                          width: e.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                                  ?.width ??
                              0,
                          height: e.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                                  ?.height ??
                              0,
                        ),
                      ),
                      hash: e.attributes?.avatarCard?.data?.attributes?.hash ?? '',
                      ext: e.attributes?.avatarCard?.data?.attributes?.ext ?? '',
                      mime: e.attributes?.avatarCard?.data?.attributes?.mime ?? '',
                      size: e.attributes?.avatarCard?.data?.attributes?.size ?? 0,
                      url: e.attributes?.avatarCard?.data?.attributes?.url ?? '',
                      previewUrl: e.attributes?.avatarCard?.data?.attributes?.previewUrl ?? '',
                      provider: e.attributes?.avatarCard?.data?.attributes?.provider ?? '',
                      providerMetadata:
                          e.attributes?.avatarCard?.data?.attributes?.providerMetadata ?? '',
                      createdAt:
                          e.attributes?.avatarCard?.data?.attributes?.createdAt ?? DateTime.now(),
                      updatedAt:
                          e.attributes?.avatarCard?.data?.attributes?.updatedAt ?? DateTime.now(),
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(),
      meta: CardMetaEntity(
        pagination: CardPaginationEntity(
          page: response.meta?.pagination?.page ?? 0,
          pageSize: response.meta?.pagination?.pageSize ?? 0,
          pageCount: response.meta?.pagination?.pageCount ?? 0,
          total: response.meta?.pagination?.total ?? 0,
        ),
      ),
    );
    return data.data;
  }

  @override
  Future<CardIdDataEntity> getCardById({required int id}) async {
    final response = await cardRemoteDataSource.getCardById(id);

    final data = CardIdDataEntity(
      id: response.data?.id ?? 0,
      attributes: CardIdDataAttributesEntity(
        name: response.data?.attributes?.name ?? '',
        role: response.data?.attributes?.role ?? '',
        description: response.data?.attributes?.description ?? '',
        level: response.data?.attributes?.level ?? '',
        createdAt: response.data?.attributes?.createdAt ?? DateTime.now(),
        updatedAt: response.data?.attributes?.updatedAt ?? DateTime.now(),
        publishedAt: response.data?.attributes?.publishedAt ?? DateTime.now(),
        avatarCard: CardIdDataAttributesAvatarCardEntity(
          data: CardIdDataAttributesAvatarCardDataEntity(
            id: response.data?.attributes?.avatarCard?.data?.id ?? 0,
            attributes: CardIdDataAttributesAvatarCardDataAttributesEntity(
              name: response.data?.attributes?.avatarCard?.data?.attributes?.name ?? '',
              alternativeText:
                  response.data?.attributes?.avatarCard?.data?.attributes?.alternativeText ?? '',
              caption: response.data?.attributes?.avatarCard?.data?.attributes?.caption ?? '',
              width: response.data?.attributes?.avatarCard?.data?.attributes?.width ?? 0,
              height: response.data?.attributes?.avatarCard?.data?.attributes?.height ?? 0,
              formats: CardIdDataAttributesAvatarCardDataAttributesFormatsEntity(
                small: CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity(
                  ext: response
                          .data?.attributes?.avatarCard?.data?.attributes?.formats?.small?.ext ??
                      '',
                  url: response
                          .data?.attributes?.avatarCard?.data?.attributes?.formats?.small?.url ??
                      '',
                  hash: response
                          .data?.attributes?.avatarCard?.data?.attributes?.formats?.small?.hash ??
                      '',
                  mime: response
                          .data?.attributes?.avatarCard?.data?.attributes?.formats?.small?.mime ??
                      '',
                  name: response
                          .data?.attributes?.avatarCard?.data?.attributes?.formats?.small?.name ??
                      '',
                  path: response
                          .data?.attributes?.avatarCard?.data?.attributes?.formats?.small?.path ??
                      '',
                  size: response
                          .data?.attributes?.avatarCard?.data?.attributes?.formats?.small?.size ??
                      0,
                  width: response
                          .data?.attributes?.avatarCard?.data?.attributes?.formats?.small?.width ??
                      0,
                  height: response
                          .data?.attributes?.avatarCard?.data?.attributes?.formats?.small?.height ??
                      0,
                  isUrlSigned: response.data?.attributes?.avatarCard?.data?.attributes?.formats
                          ?.small?.isUrlSigned ??
                      false,
                ),
                thumbnail: CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity(
                  ext: response.data?.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                          ?.ext ??
                      '',
                  url: response.data?.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                          ?.url ??
                      '',
                  hash: response.data?.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                          ?.hash ??
                      '',
                  mime: response.data?.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                          ?.mime ??
                      '',
                  name: response.data?.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                          ?.name ??
                      '',
                  path: response.data?.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                          ?.path ??
                      '',
                  size: response.data?.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                          ?.size ??
                      0,
                  width: response.data?.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                          ?.width ??
                      0,
                  height: response.data?.attributes?.avatarCard?.data?.attributes?.formats
                          ?.thumbnail?.height ??
                      0,
                  isUrlSigned: response.data?.attributes?.avatarCard?.data?.attributes?.formats
                          ?.thumbnail?.isUrlSigned ??
                      false,
                ),
              ),
              hash: response.data?.attributes?.avatarCard?.data?.attributes?.hash ?? '',
              ext: response.data?.attributes?.avatarCard?.data?.attributes?.ext ?? '',
              mime: response.data?.attributes?.avatarCard?.data?.attributes?.mime ?? '',
              size: response.data?.attributes?.avatarCard?.data?.attributes?.size ?? 0,
              url: response.data?.attributes?.avatarCard?.data?.attributes?.url ?? '',
              previewUrl: response.data?.attributes?.avatarCard?.data?.attributes?.previewUrl ?? '',
              provider: response.data?.attributes?.avatarCard?.data?.attributes?.provider ?? '',
              providerMetadata:
                  response.data?.attributes?.avatarCard?.data?.attributes?.providerMetadata ?? '',
              createdAt: response.data?.attributes?.avatarCard?.data?.attributes?.createdAt ??
                  DateTime.now(),
              updatedAt: response.data?.attributes?.avatarCard?.data?.attributes?.updatedAt ??
                  DateTime.now(),
              isUrlSigned:
                  response.data?.attributes?.avatarCard?.data?.attributes?.isUrlSigned ?? false,
            ),
          ),
        ),
        quizzes: CardIdDataAttributesQuizzesEntity(
          data: response.data?.attributes?.quizzes?.data
                  ?.map((e) => CardIdDataAttributesQuizzesDataEntity(
                        id: e.id ?? 0,
                        attributes: CardIdDataAttributesQuizzesDataAttributesEntity(
                          quizQuestion: e.attributes?.quizQuestion ?? '',
                          optionOne: e.attributes?.optionOne ?? '',
                          optionTwo: e.attributes?.optionTwo ?? '',
                          optionThree: e.attributes?.optionThree ?? '',
                          optionFour: e.attributes?.optionFour ?? '',
                          correctOption: e.attributes?.correctOption ?? '',
                          createdAt: e.attributes?.createdAt ?? DateTime.now(),
                          updatedAt: e.attributes?.updatedAt ?? DateTime.now(),
                          publishedAt: e.attributes?.publishedAt ?? DateTime.now(),
                          score: e.attributes?.score ?? 0,
                        ),
                      ))
                  .toList() ??
              [],
        ),
        users: CardIdDataAttributesUsersEntity(
          data: response.data?.attributes?.users?.data
                  ?.map((e) => CardIdDataAttributesUsersDataEntity(
                        id: e.id ?? 0,
                        attributes: CardIdDataAttributesUsersDataAttributesEntity(
                          username: e.attributes?.username ?? '',
                          email: e.attributes?.email ?? '',
                          provider: e.attributes?.provider ?? '',
                          confirmed: e.attributes?.confirmed ?? false,
                          blocked: e.attributes?.blocked ?? false,
                          collectionCard: e.attributes?.collectionCard ?? 0,
                          createdAt: e.attributes?.createdAt ?? DateTime.now(),
                          updatedAt: e.attributes?.updatedAt ?? DateTime.now(),
                          scores: e.attributes?.scores ?? 0,
                        ),
                      ))
                  .toList() ??
              [],
        ),
      ),
    );

    return data;
  }

  @override
  Future<CardIdDataEntity?> getCardByScanner({required String url}) async {
    final response = await cardRemoteDataSource.getCardByScanner(url);
    if (response.data == null) {
      return null;
    }
    final data = CardIdDataEntity(
      id: response.data?.id ?? 0,
      attributes: CardIdDataAttributesEntity(
        name: response.data?.attributes?.name ?? '',
        role: response.data?.attributes?.role ?? '',
        description: response.data?.attributes?.description ?? '',
        level: response.data?.attributes?.level ?? '',
        createdAt: response.data?.attributes?.createdAt ?? DateTime.now(),
        updatedAt: response.data?.attributes?.updatedAt ?? DateTime.now(),
        publishedAt: response.data?.attributes?.publishedAt ?? DateTime.now(),
        avatarCard: CardIdDataAttributesAvatarCardEntity(
          data: CardIdDataAttributesAvatarCardDataEntity(
            id: response.data?.attributes?.avatarCard?.data?.id ?? 0,
            attributes: CardIdDataAttributesAvatarCardDataAttributesEntity(
              name: response.data?.attributes?.avatarCard?.data?.attributes?.name ?? '',
              alternativeText:
                  response.data?.attributes?.avatarCard?.data?.attributes?.alternativeText ?? '',
              caption: response.data?.attributes?.avatarCard?.data?.attributes?.caption ?? '',
              width: response.data?.attributes?.avatarCard?.data?.attributes?.width ?? 0,
              height: response.data?.attributes?.avatarCard?.data?.attributes?.height ?? 0,
              formats: CardIdDataAttributesAvatarCardDataAttributesFormatsEntity(
                small: CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity(
                  ext: response
                          .data?.attributes?.avatarCard?.data?.attributes?.formats?.small?.ext ??
                      '',
                  url: response
                          .data?.attributes?.avatarCard?.data?.attributes?.formats?.small?.url ??
                      '',
                  hash: response
                          .data?.attributes?.avatarCard?.data?.attributes?.formats?.small?.hash ??
                      '',
                  mime: response
                          .data?.attributes?.avatarCard?.data?.attributes?.formats?.small?.mime ??
                      '',
                  name: response
                          .data?.attributes?.avatarCard?.data?.attributes?.formats?.small?.name ??
                      '',
                  path: response
                          .data?.attributes?.avatarCard?.data?.attributes?.formats?.small?.path ??
                      '',
                  size: response
                          .data?.attributes?.avatarCard?.data?.attributes?.formats?.small?.size ??
                      0,
                  width: response
                          .data?.attributes?.avatarCard?.data?.attributes?.formats?.small?.width ??
                      0,
                  height: response
                          .data?.attributes?.avatarCard?.data?.attributes?.formats?.small?.height ??
                      0,
                  isUrlSigned: response.data?.attributes?.avatarCard?.data?.attributes?.formats
                          ?.small?.isUrlSigned ??
                      false,
                ),
                thumbnail: CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity(
                  ext: response.data?.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                          ?.ext ??
                      '',
                  url: response.data?.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                          ?.url ??
                      '',
                  hash: response.data?.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                          ?.hash ??
                      '',
                  mime: response.data?.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                          ?.mime ??
                      '',
                  name: response.data?.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                          ?.name ??
                      '',
                  path: response.data?.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                          ?.path ??
                      '',
                  size: response.data?.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                          ?.size ??
                      0,
                  width: response.data?.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                          ?.width ??
                      0,
                  height: response.data?.attributes?.avatarCard?.data?.attributes?.formats
                          ?.thumbnail?.height ??
                      0,
                  isUrlSigned: response.data?.attributes?.avatarCard?.data?.attributes?.formats
                          ?.thumbnail?.isUrlSigned ??
                      false,
                ),
              ),
              hash: response.data?.attributes?.avatarCard?.data?.attributes?.hash ?? '',
              ext: response.data?.attributes?.avatarCard?.data?.attributes?.ext ?? '',
              mime: response.data?.attributes?.avatarCard?.data?.attributes?.mime ?? '',
              size: response.data?.attributes?.avatarCard?.data?.attributes?.size ?? 0,
              url: response.data?.attributes?.avatarCard?.data?.attributes?.url ?? '',
              previewUrl: response.data?.attributes?.avatarCard?.data?.attributes?.previewUrl ?? '',
              provider: response.data?.attributes?.avatarCard?.data?.attributes?.provider ?? '',
              providerMetadata:
                  response.data?.attributes?.avatarCard?.data?.attributes?.providerMetadata ?? '',
              createdAt: response.data?.attributes?.avatarCard?.data?.attributes?.createdAt ??
                  DateTime.now(),
              updatedAt: response.data?.attributes?.avatarCard?.data?.attributes?.updatedAt ??
                  DateTime.now(),
              isUrlSigned:
                  response.data?.attributes?.avatarCard?.data?.attributes?.isUrlSigned ?? false,
            ),
          ),
        ),
        quizzes: CardIdDataAttributesQuizzesEntity(
          data: response.data?.attributes?.quizzes?.data
                  ?.map((e) => CardIdDataAttributesQuizzesDataEntity(
                        id: e.id ?? 0,
                        attributes: CardIdDataAttributesQuizzesDataAttributesEntity(
                          quizQuestion: e.attributes?.quizQuestion ?? '',
                          optionOne: e.attributes?.optionOne ?? '',
                          optionTwo: e.attributes?.optionTwo ?? '',
                          optionThree: e.attributes?.optionThree ?? '',
                          optionFour: e.attributes?.optionFour ?? '',
                          correctOption: e.attributes?.correctOption ?? '',
                          createdAt: e.attributes?.createdAt ?? DateTime.now(),
                          updatedAt: e.attributes?.updatedAt ?? DateTime.now(),
                          publishedAt: e.attributes?.publishedAt ?? DateTime.now(),
                          score: e.attributes?.score ?? 0,
                        ),
                      ))
                  .toList() ??
              [],
        ),
        users: CardIdDataAttributesUsersEntity(
          data: response.data?.attributes?.users?.data
                  ?.map((e) => CardIdDataAttributesUsersDataEntity(
                        id: e.id ?? 0,
                        attributes: CardIdDataAttributesUsersDataAttributesEntity(
                          username: e.attributes?.username ?? '',
                          email: e.attributes?.email ?? '',
                          provider: e.attributes?.provider ?? '',
                          confirmed: e.attributes?.confirmed ?? false,
                          blocked: e.attributes?.blocked ?? false,
                          collectionCard: e.attributes?.collectionCard ?? 0,
                          createdAt: e.attributes?.createdAt ?? DateTime.now(),
                          updatedAt: e.attributes?.updatedAt ?? DateTime.now(),
                          scores: e.attributes?.scores ?? 0,
                        ),
                      ))
                  .toList() ??
              [],
        ),
      ),
    );
    return data;
  }

  @override
  Future<UserDataResponseEntity?> addCollectionCard(
      {required int cardId, required int userId}) async {
    try {
      final response = await cardRemoteDataSource.addCardCollection(cardId, userId);
      final data = UserDataResponseEntity(
        id: response.id ?? 0,
        username: response.username ?? '',
        email: response.email ?? '',
        collectionCard: response.collectionCard ?? 0,
        scores: response.scores ?? 0,
      );
      return data;
    } catch (error) {
      print(error);
      return null;
    }
  }

  @override
  Future<List<CardAlbumResponseEntity>> getAlbumCards({required int id}) async {
    try {
      final response = await cardRemoteDataSource.getAlbumCard(id: id);
      final List<CardAlbumResponseEntity> entities = response
          .map((model) => CardAlbumResponseEntity(
                id: model.id ?? 0,
                name: model.name ?? '',
                role: model.role ?? '',
                description: model.description ?? '',
                level: model.level ?? '',
                avatarCard: DataAvatarCardEntity(
                  id: model.avatarCard?.id ?? 0,
                  name: model.avatarCard?.name ?? '',
                  alternativeText: model.avatarCard?.alternativeText ?? '',
                  caption: model.avatarCard?.caption ?? '',
                  width: model.avatarCard?.width ?? 0,
                  height: model.avatarCard?.height ?? 0,
                  hash: model.avatarCard?.hash ?? '',
                  ext: model.avatarCard?.ext ?? '',
                  mime: model.avatarCard?.mime ?? '',
                  size: model.avatarCard?.size ?? 0,
                  url: model.avatarCard?.url ?? '',
                  previewUrl: model.avatarCard?.previewUrl ?? '',
                  provider: model.avatarCard?.provider ?? '',
                  providerMetadata: model.avatarCard?.providerMetadata ?? '',
                  folderPath: model.avatarCard?.folderPath ?? '',
                  createdAt: model.avatarCard?.createdAt ?? DateTime.now(),
                  updatedAt: model.avatarCard?.updatedAt ?? DateTime.now(),
                  isUrlSigned: model.avatarCard?.isUrlSigned ?? false,
                ),
                status: model.status!,
              ))
          .toList();
      return entities;
    } catch (e) {
      log(e.toString());
      return [];
    }
  }

  @override
  Future<CheckCardResponseEntity?> checkCard(
      {required CheckCardRequestModel request, required int cardId}) async {
    try {
      final response = await cardRemoteDataSource.checkCard(request: request, cardId: cardId);
      final data = CheckCardResponseEntity(
        status: response.status ?? 0,
        message: '',
      );
      return data;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
