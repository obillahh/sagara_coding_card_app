import 'package:sagara_coding_card_application/domain/repositories/card_repository.dart';

class AddCollectionCardUseCase {
  final CardRepository cardRepository;

  AddCollectionCardUseCase({required this.cardRepository});

  Future<void> call(int userId, int cardId) async {
    await cardRepository.addCollectionCard(userId, cardId);
  }
}
