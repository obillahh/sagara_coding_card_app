part of 'card_collection_bloc.dart';

sealed class CardCollectionEvent extends Equatable {
  const CardCollectionEvent();

  @override
  List<Object> get props => [];
}

class AddCollectionCardEvent extends CardCollectionEvent {
  final int cardId;
  final int userId;

  const AddCollectionCardEvent({required this.cardId, required this.userId});

  @override
  List<Object> get props => [cardId, userId];
}
