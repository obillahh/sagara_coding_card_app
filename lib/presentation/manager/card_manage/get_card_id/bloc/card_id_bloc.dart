import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sagara_coding_card_application/domain/use_cases/card_use_case/get_card_by_id_use_case.dart';

import '../../../../../domain/entities/card_entity/card_id_response_entity.dart';
import '../../../../../domain/use_cases/card_use_case/get_card_by_scanner_use_case.dart';

part 'card_id_event.dart';
part 'card_id_state.dart';

class CardIdBloc extends Bloc<CardIdEvent, CardIdState> {
  final GetCardByIdUseCase getCardByIdUseCase;
  final GetCardByScannerUseCase getCardByScannerUseCase;
  CardIdBloc({required this.getCardByIdUseCase, required this.getCardByScannerUseCase})
      : super(CardIdInitialState()) {
    on<CardIdEvent>(
      (event, emit) async {
        if (event is GetCardIdEvent) {
          emit(CardIdLoadingState());
          final CardIdResponseDataEntity? data = await getCardByIdUseCase(event.id);
          if (data != null) {
            emit(CardIdSuccessState(card: data));
          } else {
            emit(CardIdFailureState(message: 'Something went wrong'));
          }
        }
        if (event is GetCardScannerEvent) {
          emit(CardIdLoadingState());
          final CardIdResponseDataEntity? data = await getCardByScannerUseCase(event.url);
          if (data != null) {
            emit(CardIdSuccessState(card: data));
          } else {
            emit(CardIdFailureState(message: 'Something went wrong'));
          }
        }
      },
    );
  }
}
