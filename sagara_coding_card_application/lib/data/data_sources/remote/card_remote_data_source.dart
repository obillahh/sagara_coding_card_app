import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:sagara_coding_card_application/data/models/card_model/cards_list_response_model.dart';
import 'package:sagara_coding_card_application/presentation/utils/constant/api_constant.dart';

import '../../models/card_model/card_id_response_model.dart';
import '../local/auth_local_data_source.dart';

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
            'Authorization': 'Bearer ${await AuthLocalDataSource().getToken()}',
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
          "populate": "avatar_card",
        },
        options: Options(
          headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer ${await AuthLocalDataSource().getToken()}',
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
}
