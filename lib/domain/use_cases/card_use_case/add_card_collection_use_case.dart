import 'package:sagara_coding_card_application/domain/entities/auth_entity/user_entity/user_data_response_entity.dart';
import 'package:sagara_coding_card_application/domain/repositories/card_repository.dart';

class AddCollectionCardUseCase {
  final CardRepository cardRepository;

  AddCollectionCardUseCase({required this.cardRepository});

  Future<UserDataResponseEntity?> call({required int cardId, required int userId}) async =>
      await cardRepository.addCollectionCard(cardId: cardId, userId: userId);
}
