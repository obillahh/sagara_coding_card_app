import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sagara_coding_card_application/data/models/card_model/check_card_request_model.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/user_entity/user_data_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/card_entity/card_album_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/card_entity/card_id_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/card_entity/check_card_response_entity.dart';
import 'package:sagara_coding_card_application/domain/use_cases/card_use_case/add_card_collection_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/card_use_case/check_card_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/card_use_case/get_album_cards_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/card_use_case/get_card_by_id_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/card_use_case/get_card_by_scanner_use_case.dart';

part 'card_event.dart';
part 'card_state.dart';
part 'card_bloc.freezed.dart';

class CardBloc extends Bloc<CardEvent, CardState> {
  final GetAlbumCardsUseCase getAlbumCardsUseCase;
  final GetCardByIdUseCase getCardByIdUseCase;
  final GetCardByScannerUseCase getCardByScannerUseCase;
  final AddCollectionCardUseCase addCollectionCardUseCase;
  final CheckCardUseCase checkCardUseCase;
  CardBloc({
    required this.getAlbumCardsUseCase,
    required this.getCardByIdUseCase,
    required this.getCardByScannerUseCase,
    required this.addCollectionCardUseCase,
    required this.checkCardUseCase,
  }) : super(const _Initial()) {
    on<_GetCardListEvent>(_onGetCardListEvent);
    on<_GetCardByIdEvent>(_onGetCardByIdEvent);
    on<_GetCardByScannerEvent>(_onGetCardByScannerEvent);
    on<_AddCardCollectionEvent>(_onAddCardCollectionEvent);
    on<_CheckCardEvent>(_onCheckCardEvent);
  }

  Future<void> _onGetCardListEvent(_GetCardListEvent event, Emitter<CardState> emit) async {
    emit(const CardState.loading());
    try {
      final data = await getAlbumCardsUseCase(id: event.id);
      emit(CardState.success(cardList: data));
    } catch (error) {
      emit(CardState.failure(error.toString()));
    }
  }

  Future<void> _onGetCardByIdEvent(_GetCardByIdEvent event, Emitter<CardState> emit) async {
    emit(const CardState.loading());
    try {
      final data = await getCardByIdUseCase(id: event.id);
      emit(CardState.success(card: data));
    } catch (error) {
      emit(CardState.failure(error.toString()));
    }
  }

  Future<void> _onGetCardByScannerEvent(
      _GetCardByScannerEvent event, Emitter<CardState> emit) async {
    emit(const CardState.loading());
    try {
      final data = await getCardByScannerUseCase(url: event.url);
      emit(CardState.success(card: data));
    } catch (error) {
      emit(CardState.failure(error.toString()));
    }
  }

  Future<void> _onAddCardCollectionEvent(
      _AddCardCollectionEvent event, Emitter<CardState> emit) async {
    emit(const CardState.loading());
    try {
      final userData = await addCollectionCardUseCase(cardId: event.cardId, userId: event.userId);
      emit(CardState.success(userData: userData));
    } catch (error) {
      emit(CardState.failure(error.toString()));
    }
  }

  Future<void> _onCheckCardEvent(_CheckCardEvent event, Emitter<CardState> emit) async {
    emit(const CardState.loading());
    try {
      final checkCard = await checkCardUseCase(request: event.request, cardId: event.cardId);
      emit(CardState.success(checkCard: checkCard!));
    } catch (error) {
      emit(CardState.failure(error.toString()));
    }
  }
}
