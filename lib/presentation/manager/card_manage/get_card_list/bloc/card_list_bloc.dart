import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sagara_coding_card_application/data/models/card_model/check_card_request_model.dart';
import 'package:sagara_coding_card_application/domain/entities/card_entity/card_album_response_entity.dart';

import 'package:sagara_coding_card_application/domain/entities/card_entity/card_list_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/card_entity/check_card_response_entity.dart';
import 'package:sagara_coding_card_application/domain/use_cases/card_use_case/check_card_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/card_use_case/get_album_cards_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/card_use_case/get_list_card_use_case.dart';

part 'card_list_event.dart';
part 'card_list_state.dart';

class CardListBloc extends Bloc<CardListEvent, CardListState> {
  final GetListCardsUseCase getListCardsUseCase;
  final GetAlbumCardsUseCase getAlbumCardsUseCase;
  CardListBloc({
    required this.getListCardsUseCase,
    required this.getAlbumCardsUseCase,
  }) : super(CardListInitial()) {
    on<CardListEvent>(
      (event, emit) async {
        if (event is GetCardListEvent) {
          emit(CardListLoadingState());
          final List<CardListDataEntity>? data = await getListCardsUseCase();
          if (data != null) {
            emit(CardListSuccessState(cardList: data));
          } else {
            emit(
              CardListFailureState(message: 'Something went wrong'),
            );
          }
        }
        if (event is GetCardAlbumListEvent) {
          emit(CardAlbumListLoadingState());
          final List<CardAlbumResponseEntity> data = await getAlbumCardsUseCase(id: event.id);
          emit(CardAlbumListSuccessState(cardList: data));
        }
      },
    );
  }
}
