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
