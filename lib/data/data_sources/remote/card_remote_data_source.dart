import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:sagara_coding_card_application/data/data_sources/local/auth_local_data_source.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/user_model/user_data_response_model.dart';
import 'package:sagara_coding_card_application/data/models/card_model/add_card_collection_request_model.dart';
import 'package:sagara_coding_card_application/data/models/card_model/card_album_response_model.dart';
import 'package:sagara_coding_card_application/data/models/card_model/cards_list_response_model.dart';
import 'package:sagara_coding_card_application/data/models/card_model/check_card_request_model.dart';
import 'package:sagara_coding_card_application/data/models/card_model/check_card_response_model.dart';
import 'package:sagara_coding_card_application/presentation/utils/constant/api_constant.dart';

import '../../models/card_model/card_id_response_model.dart';

class CardRemoteDataSource {
  final Dio client;

  CardRemoteDataSource({required this.client});

  Future<CardResponseModel> getListCard() async {
    try {
      const url = ApiConstant.card;
      final result = await client.get(
        url,
        queryParameters: {
          "populate": "avatar_card",
        },
        options: Options(
          headers: {
            'Accept': 'application/json',
          },
        ),
      );
      final cardData = CardResponseModel.fromJson(result.data);
      return cardData;
    } catch (e) {
      inspect('Error: $e');
      return CardResponseModel();
    }
  }

  Future<List<CardAlbumResponseModel>> getAlbumCard({required int id}) async {
    try {
      final url = '${ApiConstant.listCard}/$id/card-album';
      final result = await client.get(
        url,
        options: Options(
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
        ),
      );

      final List<dynamic> jsonData = result.data;
      final List<CardAlbumResponseModel> cardData = jsonData
          .map((item) => CardAlbumResponseModel.fromJson(item as Map<String, dynamic>))
          .toList();

      return cardData;
    } catch (e) {
      inspect('Error: $e');
      return [];
    }
  }

  Future<CardIdResponseModel> getCardById(int id) async {
    try {
      final url = '${ApiConstant.card}/$id';
      final result = await client.get(
        url,
        queryParameters: {
          "populate": "*",
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );
      final cardData = CardIdResponseModel.fromJson(result.data);
      return cardData;
    } catch (e) {
      inspect('Error: $e');
      return const CardIdResponseModel();
    }
  }

  Future<CardIdResponseModel> getCardByScanner(String url) async {
    try {
      final String completeUrl = 'https://$url';
      final result = await client.get(
        completeUrl,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );
      final cardData = CardIdResponseModel.fromJson(result.data);
      return cardData;
    } catch (e) {
      inspect('Error: $e');
      throw Exception('Failed to get card data');
    }
  }

  Future<UserDataResponseModel> addCardCollection(int cardId, int userId) async {
    try {
      final url = '${ApiConstant.addCard}/$userId';
      final model = AddCardCollectionRequestModel(
        cards: CardsRequestModel(
          connect: [
            CardsConnectRequestModel(id: cardId),
          ],
        ),
      );
      final result = await client.put(
        url,
        data: model.toJson(),
        options: Options(
          headers: {
            'Accept': 'application/json',
          },
        ),
      );
      final userData = UserDataResponseModel.fromJson(result.data);
      return userData;
    } catch (error) {
      inspect('Error: $error');
      rethrow;
    }
  }

  Future<CheckCardResponseModel> checkCard(
      {required CheckCardRequestModel request, required int cardId}) async {
    try {
      final url = '${ApiConstant.card}/$cardId/check-ownership';
      final token = await AuthLocalDataSource().getToken();
      final result = await client.post(
        url,
        data: checkCardRequestModelToJson(request),
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
            'Accept': 'application/json',
          },
        ),
      );
      final checkCardData = CheckCardResponseModel.fromJson(result.data);
      return checkCardData;
    } catch (e) {
      inspect('Error: $e');
      rethrow;
    }
  }
}
