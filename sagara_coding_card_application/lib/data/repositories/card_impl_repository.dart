import 'package:sagara_coding_card_application/data/data_sources/remote/card_remote_data_source.dart';
import 'package:sagara_coding_card_application/data/models/card_model/cards_list_response_model.dart';
import 'package:sagara_coding_card_application/domain/entities/card_entity/card_list_response_entity.dart';
import 'package:sagara_coding_card_application/domain/repositories/card_repository.dart';

class CardImplRepository extends CardRepository {
  final CardRemoteDataSource remoteDataSource;

  CardImplRepository({required this.remoteDataSource});

  @override
  Future<List<CardDataEntity>?> getListCards() async {
    // TODO: implement getListCards
    final response = await remoteDataSource.getListCard();
    if (response.data == null) {
      return null;
    }
    final data = CardResponseEntity(
      data: List<CardDataModel>.from(response.data ?? [])
          .map(
            (e) => CardDataEntity(
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
                      name: e.attributes?.avatarCard?.data?.attributes?.name ??
                          '',
                      alternativeText: e.attributes?.avatarCard?.data
                              ?.attributes?.alternativeText ??
                          '',
                      caption:
                          e.attributes?.avatarCard?.data?.attributes?.caption ??
                              '',
                      width:
                          e.attributes?.avatarCard?.data?.attributes?.width ??
                              0,
                      height:
                          e.attributes?.avatarCard?.data?.attributes?.height ??
                              0,
                      formats: AvatarCardDataAttributeFormatsEntity(
                        small: FormatDataEntity(
                          ext: e.attributes?.avatarCard?.data?.attributes
                                  ?.formats?.small?.ext ??
                              '',
                          url: e.attributes?.avatarCard?.data?.attributes
                                  ?.formats?.small?.url ??
                              '',
                          hash: e.attributes?.avatarCard?.data?.attributes
                                  ?.formats?.small?.hash ??
                              '',
                          mime: e.attributes?.avatarCard?.data?.attributes
                                  ?.formats?.small?.mime ??
                              '',
                          name: e.attributes?.avatarCard?.data?.attributes
                                  ?.formats?.small?.name ??
                              '',
                          path: e.attributes?.avatarCard?.data?.attributes
                                  ?.formats?.small?.path ??
                              '',
                          size: e.attributes?.avatarCard?.data?.attributes
                                  ?.formats?.small?.size ??
                              0,
                          width: e.attributes?.avatarCard?.data?.attributes
                                  ?.formats?.small?.width ??
                              0,
                          height: e.attributes?.avatarCard?.data?.attributes
                                  ?.formats?.small?.height ??
                              0,
                        ),
                        thumbnail: FormatDataEntity(
                          ext: e.attributes?.avatarCard?.data?.attributes
                                  ?.formats?.small?.ext ??
                              '',
                          url: e.attributes?.avatarCard?.data?.attributes
                                  ?.formats?.small?.url ??
                              '',
                          hash: e.attributes?.avatarCard?.data?.attributes
                                  ?.formats?.small?.hash ??
                              '',
                          mime: e.attributes?.avatarCard?.data?.attributes
                                  ?.formats?.small?.mime ??
                              '',
                          name: e.attributes?.avatarCard?.data?.attributes
                                  ?.formats?.small?.name ??
                              '',
                          path: e.attributes?.avatarCard?.data?.attributes
                                  ?.formats?.small?.path ??
                              '',
                          size: e.attributes?.avatarCard?.data?.attributes
                                  ?.formats?.small?.size ??
                              0,
                          width: e.attributes?.avatarCard?.data?.attributes
                                  ?.formats?.small?.width ??
                              0,
                          height: e.attributes?.avatarCard?.data?.attributes
                                  ?.formats?.small?.height ??
                              0,
                        ),
                      ),
                      hash: e.attributes?.avatarCard?.data?.attributes?.hash ??
                          '',
                      ext:
                          e.attributes?.avatarCard?.data?.attributes?.ext ?? '',
                      mime: e.attributes?.avatarCard?.data?.attributes?.mime ??
                          '',
                      size:
                          e.attributes?.avatarCard?.data?.attributes?.size ?? 0,
                      url:
                          e.attributes?.avatarCard?.data?.attributes?.url ?? '',
                      previewUrl: e.attributes?.avatarCard?.data?.attributes
                              ?.previewUrl ??
                          '',
                      provider: e.attributes?.avatarCard?.data?.attributes
                              ?.provider ??
                          '',
                      providerMetadata: e.attributes?.avatarCard?.data
                              ?.attributes?.providerMetadata ??
                          '',
                      createdAt: e.attributes?.avatarCard?.data?.attributes
                              ?.createdAt ??
                          DateTime.now(),
                      updatedAt: e.attributes?.avatarCard?.data?.attributes
                              ?.updatedAt ??
                          DateTime.now(),
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
}
