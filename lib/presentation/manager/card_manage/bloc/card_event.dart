part of 'card_bloc.dart';

@freezed
class CardEvent with _$CardEvent {
  const factory CardEvent.getCardListEvent({required int id}) = _GetCardListEvent;
  const factory CardEvent.getCardByIdEvent({required int id}) = _GetCardByIdEvent;
  const factory CardEvent.getCardByScannerEvent({required String url}) = _GetCardByScannerEvent;
  const factory CardEvent.addCardCollectionEvent({required int cardId, required int userId}) =
      _AddCardCollectionEvent;
  const factory CardEvent.checkCardEvent(
      {required CheckCardRequestModel request, required int cardId}) = _CheckCardEvent;
}
