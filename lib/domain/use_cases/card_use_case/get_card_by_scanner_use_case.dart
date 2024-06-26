import '../../entities/card_entity/card_id_response_entity.dart';
import '../../repositories/card_repository.dart';

class GetCardByScannerUseCase {
  final CardRepository cardRepository;

  GetCardByScannerUseCase({required this.cardRepository});

  Future<CardIdDataEntity?> call({required String url}) async =>
      await cardRepository.getCardByScanner(url: url);
}
