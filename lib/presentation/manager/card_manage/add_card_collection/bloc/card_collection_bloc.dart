import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:sagara_coding_card_application/domain/use_cases/card_use_case/add_card_collection_use_case.dart';

import '../../../../../domain/entities/auth_entity/user_entity/user_data_response_entity.dart';

part 'card_collection_event.dart';
part 'card_collection_state.dart';

class CardCollectionBloc extends Bloc<CardCollectionEvent, CardCollectionState> {
  final AddCollectionCardUseCase addCollectionCardUseCase;
  CardCollectionBloc({
    required this.addCollectionCardUseCase,
  }) : super(CardCollectionInitial()) {
    on<CardCollectionEvent>((event, emit) async {
      if (event is AddCollectionCardEvent) {
        final UserDataResponseEntity? data =
            await addCollectionCardUseCase(event.cardId, event.userId);
        if (data != null) {
          emit(AddCollectionCardState(userData: data));
        }
      }
    });
  }
}
