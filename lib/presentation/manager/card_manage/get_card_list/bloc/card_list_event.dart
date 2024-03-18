part of 'card_list_bloc.dart';

@immutable
sealed class CardListEvent {}

class GetCardListEvent extends CardListEvent {}
