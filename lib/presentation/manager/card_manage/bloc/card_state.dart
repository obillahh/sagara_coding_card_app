part of 'card_bloc.dart';

@freezed
class CardState with _$CardState {
  const factory CardState.initial() = _Initial;
  const factory CardState.loading() = _CardLoadingState;
  const factory CardState.success({
    List<CardAlbumResponseEntity>? cardList,
    CardIdDataEntity? card,
    UserDataResponseEntity? userData,
    CheckCardResponseEntity? checkCard,
  }) = _CardSuccessState;
  const factory CardState.failure(String message) = _CardFailureState;
}
