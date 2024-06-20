import 'package:sagara_coding_card_application/domain/entities/card_entity/card_list_response_entity.dart';
import 'package:sagara_coding_card_application/domain/repositories/card_repository.dart';

class GetListCardsUseCase {
  final CardRepository cardRepository;

  GetListCardsUseCase({required this.cardRepository});

  Future<List<CardListDataEntity>?> call() async => await cardRepository.getListCards();
}
