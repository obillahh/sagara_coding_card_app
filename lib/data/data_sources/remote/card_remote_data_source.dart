import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/user_model/user_data_response_model.dart';
import 'package:sagara_coding_card_application/data/models/card_model/add_card_collection_request_model.dart';
import 'package:sagara_coding_card_application/data/models/card_model/cards_list_response_model.dart';
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
          // responseType: ResponseType.stream,
          headers: {
            'Accept': 'application/json',
            // 'Authorization': 'Bearer ${await AuthLocalDataSource().getToken()}',
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
            'Accept': 'application/json',
          },
        ),
      );
      final cardData = CardIdResponseModel.fromJson(result.data);
      return cardData;
    } catch (e) {
      inspect('Error: $e');
      return CardIdResponseModel();
    }
  }

  Future<CardIdResponseModel> getCardByScanner(String url) async {
    try {
      final result = await client.get(
        url,
        options: Options(
          headers: {
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
}
