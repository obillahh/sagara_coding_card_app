part of 'card_list_bloc.dart';

@immutable
sealed class CardListState {}

class CardListInitial extends CardListState {}

class CardListLoadingState extends CardListState {}

class CardListSuccessState extends CardListState {
  final List<CardListDataEntity> cardList;

  CardListSuccessState({required this.cardList});
}

class CardListFailureState extends CardListState {
  final String message;

  CardListFailureState({required this.message});
}
