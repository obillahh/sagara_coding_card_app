part of 'card_id_bloc.dart';

@immutable
sealed class CardIdEvent {}

final class GetCardIdEvent extends CardIdEvent {
  final int id;

  GetCardIdEvent({required this.id});
}

class GetCardScannerEvent extends CardIdEvent {
  final String url;

  GetCardScannerEvent({required this.url});
}

class CheckCardEvent extends CardIdEvent {
  final CheckCardRequestModel request;
  final int cardId;

  CheckCardEvent({required this.request, required this.cardId});
}
