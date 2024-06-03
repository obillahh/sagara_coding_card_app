part of 'card_id_bloc.dart';

@immutable
sealed class CardIdState {}

final class CardIdInitialState extends CardIdState {}

final class CardIdLoadingState extends CardIdState {}

final class CardIdSuccessState extends CardIdState {
  final CardIdResponseDataEntity card;

  CardIdSuccessState({required this.card});
}

final class CardIdFailureState extends CardIdState {
  final String message;

  CardIdFailureState({required this.message});
}

class CardCheckedState extends CardIdState {
  final CheckCardResponseEntity response;

  CardCheckedState({required this.response});
}
