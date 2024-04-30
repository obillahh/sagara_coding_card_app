import 'package:sagara_coding_card_application/data/data_sources/remote/card_remote_data_source.dart';
import 'package:sagara_coding_card_application/data/models/card_model/card_id_response_model.dart';
import 'package:sagara_coding_card_application/data/models/card_model/cards_list_response_model.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/user_entity/user_data_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/card_entity/card_id_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/card_entity/card_list_response_entity.dart';
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
  Future<CardIdResponseDataEntity?> getCardById(int id) async {
    final response = await cardRemoteDataSource.getCardById(id);
    if (response.data == null) {
      return null;
    }
    final data = CardIdResponseDataEntity(
      id: response.data?.id ?? 0,
      attributes: CardIdDataAttributesEntity(
        name: response.data?.attributes?.name ?? '',
        role: response.data?.attributes?.role ?? '',
        description: response.data?.attributes?.description ?? '',
        level: response.data?.attributes?.level ?? '',
        createdAt: response.data?.attributes?.createdAt ?? DateTime.now(),
        updatedAt: response.data?.attributes?.updatedAt ?? DateTime.now(),
        publishedAt: response.data?.attributes?.publishedAt ?? DateTime.now(),
        avatarCard: AvatarCardIdResponseEntity(
          data: AvatarCardIdDataEntity(
            id: response.data?.attributes?.avatarCard?.data?.id ?? 0,
            attributes: AvatarCardIdAttributesEntity(
              name: response.data?.attributes?.avatarCard?.data?.attributes?.name ?? '',
              alternativeText:
                  response.data?.attributes?.avatarCard?.data?.attributes?.alternativeText ?? '',
              caption: response.data?.attributes?.avatarCard?.data?.attributes?.caption ?? '',
              width: response.data?.attributes?.avatarCard?.data?.attributes?.width ?? 0,
              height: response.data?.attributes?.avatarCard?.data?.attributes?.height ?? 0,
              formats: FormatsIdEntity(
                small: FormatIdDataEntity(
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
                  providerMetadata: ProviderMetadataEntity(
                    publicId: response.data?.attributes?.avatarCard?.data?.attributes?.formats
                            ?.small?.providerMetadata?.publicId ??
                        '',
                    resourceType: response.data?.attributes?.avatarCard?.data?.attributes?.formats
                            ?.small?.providerMetadata?.resourceType ??
                        '',
                  ),
                ),
                thumbnail: FormatIdDataEntity(
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
                  providerMetadata: ProviderMetadataEntity(
                    publicId: response.data?.attributes?.avatarCard?.data?.attributes?.formats
                            ?.thumbnail?.providerMetadata?.publicId ??
                        '',
                    resourceType: response.data?.attributes?.avatarCard?.data?.attributes?.formats
                            ?.thumbnail?.providerMetadata?.resourceType ??
                        '',
                  ),
                ),
              ),
              hash: response.data?.attributes?.avatarCard?.data?.attributes?.hash ?? '',
              ext: response.data?.attributes?.avatarCard?.data?.attributes?.ext ?? '',
              mime: response.data?.attributes?.avatarCard?.data?.attributes?.mime ?? '',
              size: response.data?.attributes?.avatarCard?.data?.attributes?.size ?? 0,
              url: response.data?.attributes?.avatarCard?.data?.attributes?.url ?? '',
              previewUrl: response.data?.attributes?.avatarCard?.data?.attributes?.previewUrl ?? '',
              provider: response.data?.attributes?.avatarCard?.data?.attributes?.provider ?? '',
              providerMetadata: ProviderMetadataEntity(
                publicId: response.data?.attributes?.avatarCard?.data?.attributes?.providerMetadata
                        ?.publicId ??
                    '',
                resourceType: response.data?.attributes?.avatarCard?.data?.attributes
                        ?.providerMetadata?.resourceType ??
                    '',
              ),
              createdAt: response.data?.attributes?.avatarCard?.data?.attributes?.createdAt ??
                  DateTime.now(),
              updatedAt: response.data?.attributes?.avatarCard?.data?.attributes?.updatedAt ??
                  DateTime.now(),
            ),
          ),
        ),
        quizzes: QuizCardResponseEntity(
          data: List<QuizCardDataModel>.from(response.data?.attributes?.quizzes?.data ?? [])
              .map(
                (e) => QuizCardDataEntity(
                  id: e.id ?? 0,
                  attributes: QuizCardDataAttributesEntity(
                    quizQuestion: e.attributes?.quizQuestion ?? '',
                    optionOne: e.attributes?.optionOne ?? '',
                    optionTwo: e.attributes?.optionTwo ?? '',
                    optionThree: e.attributes?.optionThree ?? '',
                    optionFour: e.attributes?.optionFour ?? '',
                    correctOption: e.attributes?.correctOption ?? '',
                    score: e.attributes?.score ?? 0,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );

    return data;
  }

  @override
  Future<CardIdResponseDataEntity?> getCardByScanner(String url) async {
    final response = await cardRemoteDataSource.getCardByScanner(url);
    if (response.data == null) {
      return null;
    }
    final data = CardIdResponseDataEntity(
      id: response.data!.id ?? 0,
      attributes: CardIdDataAttributesEntity(
        name: response.data!.attributes?.name ?? '',
        role: response.data!.attributes?.role ?? '',
        description: response.data!.attributes?.description ?? '',
        level: response.data!.attributes?.level ?? '',
        createdAt: response.data!.attributes?.createdAt ?? DateTime.now(),
        updatedAt: response.data!.attributes?.updatedAt ?? DateTime.now(),
        publishedAt: response.data!.attributes?.publishedAt ?? DateTime.now(),
        avatarCard: AvatarCardIdResponseEntity(
          data: AvatarCardIdDataEntity(
            id: response.data!.attributes?.avatarCard?.data?.id ?? 0,
            attributes: AvatarCardIdAttributesEntity(
              name: response.data!.attributes?.avatarCard?.data?.attributes?.name ?? '',
              alternativeText:
                  response.data!.attributes?.avatarCard?.data?.attributes?.alternativeText ?? '',
              caption: response.data!.attributes?.avatarCard?.data?.attributes?.caption ?? '',
              width: response.data!.attributes?.avatarCard?.data?.attributes?.width ?? 0,
              height: response.data!.attributes?.avatarCard?.data?.attributes?.height ?? 0,
              formats: FormatsIdEntity(
                small: FormatIdDataEntity(
                  ext: response
                          .data!.attributes?.avatarCard?.data?.attributes?.formats?.small?.ext ??
                      '',
                  url: response
                          .data!.attributes?.avatarCard?.data?.attributes?.formats?.small?.url ??
                      '',
                  hash: response
                          .data!.attributes?.avatarCard?.data?.attributes?.formats?.small?.hash ??
                      '',
                  mime: response
                          .data!.attributes?.avatarCard?.data?.attributes?.formats?.small?.mime ??
                      '',
                  name: response
                          .data!.attributes?.avatarCard?.data?.attributes?.formats?.small?.name ??
                      '',
                  path: response
                          .data!.attributes?.avatarCard?.data?.attributes?.formats?.small?.path ??
                      '',
                  size: response
                          .data!.attributes?.avatarCard?.data?.attributes?.formats?.small?.size ??
                      0,
                  width: response
                          .data!.attributes?.avatarCard?.data?.attributes?.formats?.small?.width ??
                      0,
                  height: response
                          .data!.attributes?.avatarCard?.data?.attributes?.formats?.small?.height ??
                      0,
                  providerMetadata: ProviderMetadataEntity(
                    publicId: response.data!.attributes?.avatarCard?.data?.attributes?.formats
                            ?.small?.providerMetadata?.publicId ??
                        '',
                    resourceType: response.data!.attributes?.avatarCard?.data?.attributes?.formats
                            ?.small?.providerMetadata?.resourceType ??
                        '',
                  ),
                ),
                thumbnail: FormatIdDataEntity(
                  ext: response.data!.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                          ?.ext ??
                      '',
                  url: response.data!.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                          ?.url ??
                      '',
                  hash: response.data!.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                          ?.hash ??
                      '',
                  mime: response.data!.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                          ?.mime ??
                      '',
                  name: response.data!.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                          ?.name ??
                      '',
                  path: response.data!.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                          ?.path ??
                      '',
                  size: response.data!.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                          ?.size ??
                      0,
                  width: response.data!.attributes?.avatarCard?.data?.attributes?.formats?.thumbnail
                          ?.width ??
                      0,
                  height: response.data!.attributes?.avatarCard?.data?.attributes?.formats
                          ?.thumbnail?.height ??
                      0,
                  providerMetadata: ProviderMetadataEntity(
                    publicId: response.data!.attributes?.avatarCard?.data?.attributes?.formats
                            ?.thumbnail?.providerMetadata?.publicId ??
                        '',
                    resourceType: response.data!.attributes?.avatarCard?.data?.attributes?.formats
                            ?.thumbnail?.providerMetadata?.resourceType ??
                        '',
                  ),
                ),
              ),
              hash: response.data!.attributes?.avatarCard?.data?.attributes?.hash ?? '',
              ext: response.data!.attributes?.avatarCard?.data?.attributes?.ext ?? '',
              mime: response.data!.attributes?.avatarCard?.data?.attributes?.mime ?? '',
              size: response.data!.attributes?.avatarCard?.data?.attributes?.size ?? 0,
              url: response.data!.attributes?.avatarCard?.data?.attributes?.url ?? '',
              previewUrl: response.data!.attributes?.avatarCard?.data?.attributes?.previewUrl ?? '',
              provider: response.data!.attributes?.avatarCard?.data?.attributes?.provider ?? '',
              providerMetadata: ProviderMetadataEntity(
                publicId: response.data!.attributes?.avatarCard?.data?.attributes?.providerMetadata
                        ?.publicId ??
                    '',
                resourceType: response.data!.attributes?.avatarCard?.data?.attributes
                        ?.providerMetadata?.resourceType ??
                    '',
              ),
              createdAt: response.data!.attributes?.avatarCard?.data?.attributes?.createdAt ??
                  DateTime.now(),
              updatedAt: response.data!.attributes?.avatarCard?.data?.attributes?.updatedAt ??
                  DateTime.now(),
            ),
          ),
        ),
        quizzes: QuizCardResponseEntity(
          data: List<QuizCardDataModel>.from(response.data?.attributes?.quizzes?.data ?? [])
              .map(
                (e) => QuizCardDataEntity(
                  id: e.id ?? 0,
                  attributes: QuizCardDataAttributesEntity(
                    quizQuestion: e.attributes?.quizQuestion ?? '',
                    optionOne: e.attributes?.optionOne ?? '',
                    optionTwo: e.attributes?.optionTwo ?? '',
                    optionThree: e.attributes?.optionThree ?? '',
                    optionFour: e.attributes?.optionFour ?? '',
                    correctOption: e.attributes?.correctOption ?? '',
                    score: e.attributes?.score ?? 0,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
    return data;
  }

  @override
  Future<UserDataResponseEntity?> addCollectionCard(int cardId, int userId) async {
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
}
