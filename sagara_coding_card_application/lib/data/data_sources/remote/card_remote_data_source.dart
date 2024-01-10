import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:sagara_coding_card_application/data/models/card_model/cards_list_response_model.dart';

class CardRemoteDataSource {
  final Dio client;

  CardRemoteDataSource({required this.client});

  Future<CardResponseModel> getListCard() async {
    try {
      const url = 'https://sagara-card.onrender.com/api/cards';
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
      // inspect('Error: $e');
      return CardResponseModel();
    }
  }
}
