part of 'card_collection_bloc.dart';

sealed class CardCollectionState extends Equatable {
  const CardCollectionState();

  @override
  List<Object> get props => [];
}

final class CardCollectionInitial extends CardCollectionState {}

class AddCollectionCardState extends CardCollectionState {
  final UserDataResponseEntity userData;

  const AddCollectionCardState({required this.userData});

  @override
  List<Object> get props => [userData];
}
