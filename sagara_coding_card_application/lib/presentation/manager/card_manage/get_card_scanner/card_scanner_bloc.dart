// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';
// import 'package:sagara_coding_card_application/domain/use_cases/card_use_case/get_card_by_scanner_use_case.dart';

// import '../../../../domain/entities/card_entity/card_id_response_entity.dart';

// part 'card_scanner_event.dart';
// part 'card_scanner_state.dart';

// class CardScannerBloc extends Bloc<CardScannerEvent, CardScannerState> {
//   final GetCardByScannerUseCase getCardByScannerUseCase;
//   CardScannerBloc({required this.getCardByScannerUseCase})
//       : super(CardScannerInitialState()) {
//     on<CardScannerEvent>(
//       (event, emit) async {
//         if (event is GetCardScannerEvent) {
//           emit(CardScannerLoadingState());
//           final CardIdResponseDataEntity? data =
//               await getCardByScannerUseCase(event.url);
//           if (data != null) {
//             emit(CardScannerSuccessState(card: data));
//           } else {
//             emit(CardScannerFailureState(message: 'Something went wrong'));
//           }
//         }
//       },
//     );
//   }
// }
