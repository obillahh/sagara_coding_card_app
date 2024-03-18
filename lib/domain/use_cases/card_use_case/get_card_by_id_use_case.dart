import '../../entities/card_entity/card_id_response_entity.dart';
import '../../repositories/card_repository.dart';

class GetCardByIdUseCase {
  final CardRepository cardRepository;

  GetCardByIdUseCase({required this.cardRepository});

  Future<CardIdResponseDataEntity?> call(int id) async =>
      await cardRepository.getCardById(id);
}
