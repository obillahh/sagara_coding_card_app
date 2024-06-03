import 'package:sagara_coding_card_application/data/models/card_model/check_card_request_model.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/user_entity/user_data_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/card_entity/card_album_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/card_entity/card_list_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/card_entity/check_card_response_entity.dart';

import '../entities/card_entity/card_id_response_entity.dart';

abstract class CardRepository {
  Future<List<CardListDataEntity>?> getListCards();
  Future<List<CardAlbumResponseEntity>> getAlbumCards({required int id});
  Future<CardIdResponseDataEntity?> getCardById(int id);
  Future<CardIdResponseDataEntity?> getCardByScanner(String url);
  Future<UserDataResponseEntity?> addCollectionCard(int cardId, int userId);
  Future<CheckCardResponseEntity?> checkCard(
      {required CheckCardRequestModel request, required int cardId});
}
