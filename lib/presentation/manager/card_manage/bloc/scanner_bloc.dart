import 'package:bloc/bloc.dart';
import 'package:sagara_coding_card_application/domain/use_cases/card_use_case/get_card_by_scanner_use_case.dart';
import 'scanner_event.dart';
import 'scanner_state.dart';

class ScannerBloc extends Bloc<ScannerEvent, ScannerState> {
  ScannerBloc({
    required this.getCardByScannerUseCase,
  }) : super(const ScannerInitial()) {
    on<GetCardByScannerEvent>(_onGetCardByScannerEvent);
  }

  final GetCardByScannerUseCase getCardByScannerUseCase;

  Future<void> _onGetCardByScannerEvent(
      GetCardByScannerEvent event, Emitter<ScannerState> emit) async {
    emit(const ScannerLoading());
    try {
      final data = await getCardByScannerUseCase(url: event.url);
      emit(ScannerSuccess(card: data!));
    } catch (error) {
      emit(ScannerFailure(error.toString()));
    }
  }
}
