import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:sagara_coding_card_application/domain/entities/card_entity/card_list_response_entity.dart';
import 'package:sagara_coding_card_application/domain/use_cases/card_use_case/get_list_card_use_case.dart';

part 'card_list_event.dart';
part 'card_list_state.dart';

class CardListBloc extends Bloc<CardListEvent, CardListState> {
  final GetListCardsUseCase getListCardsUseCase;
  CardListBloc({
    required this.getListCardsUseCase,
  }) : super(CardListInitial()) {
    on<CardListEvent>(
      (event, emit) async {
        // TODO: implement event handler
        if (event is GetCardListEvent) {
          emit(CardListLoadingState());
          final List<CardDataEntity>? data = await getListCardsUseCase();
          if (data != null) {
            emit(CardListSuccessState(cardList: data));
          } else {
            emit(CardListFailureState(message: 'Something went wrong'));
          }
        }
      },
    );
  }
}
