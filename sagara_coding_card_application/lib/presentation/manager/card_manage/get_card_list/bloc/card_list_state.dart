part of 'card_list_bloc.dart';

@immutable
sealed class CardListState {}

final class CardListInitial extends CardListState {}

final class CardListLoadingState extends CardListState {}

final class CardListSuccessState extends CardListState {
  final List<CardListDataEntity> cardList;

  CardListSuccessState({required this.cardList});
}

final class CardListFailureState extends CardListState {
  final String message;

  CardListFailureState({required this.message});
}
