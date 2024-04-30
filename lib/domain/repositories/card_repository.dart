import 'package:sagara_coding_card_application/domain/entities/auth_entity/user_entity/user_data_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/card_entity/card_list_response_entity.dart';

import '../entities/card_entity/card_id_response_entity.dart';

abstract class CardRepository {
  Future<List<CardListDataEntity>?> getListCards();
  Future<CardIdResponseDataEntity?> getCardById(int id);
  Future<CardIdResponseDataEntity?> getCardByScanner(String url);
  Future<UserDataResponseEntity?> addCollectionCard(int cardId, int userId);
}
