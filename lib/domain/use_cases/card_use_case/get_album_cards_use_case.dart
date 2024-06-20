import 'package:sagara_coding_card_application/domain/entities/card_entity/card_album_response_entity.dart';
import 'package:sagara_coding_card_application/domain/repositories/card_repository.dart';

class GetAlbumCardsUseCase {
  final CardRepository cardRepository;

  GetAlbumCardsUseCase({required this.cardRepository});

  Future<List<CardAlbumResponseEntity>?> call({required int id}) async =>
      await cardRepository.getAlbumCards(id: id);
}
