import 'package:sagara_coding_card_application/data/models/card_model/check_card_request_model.dart';
import 'package:sagara_coding_card_application/domain/entities/card_entity/check_card_response_entity.dart';
import 'package:sagara_coding_card_application/domain/repositories/card_repository.dart';

class CheckCardUseCase {
  final CardRepository cardRepository;

  CheckCardUseCase({required this.cardRepository});

  Future<CheckCardResponseEntity?> call(
          {required CheckCardRequestModel request, required int cardId}) async =>
      await cardRepository.checkCard(request: request, cardId: cardId);
}
