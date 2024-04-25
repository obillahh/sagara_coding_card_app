part of 'card_collection_bloc.dart';

sealed class CardCollectionEvent extends Equatable {
  const CardCollectionEvent();

  @override
  List<Object> get props => [];
}

class AddCollectionCardEvent extends CardCollectionEvent {
  final int userId;
  final int cardId;

  const AddCollectionCardEvent({required this.userId, required this.cardId});

  @override
  List<Object> get props => [userId, cardId];
}
