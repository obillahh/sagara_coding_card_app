// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getCardListEvent,
    required TResult Function(int id) getCardByIdEvent,
    required TResult Function(String url) getCardByScannerEvent,
    required TResult Function(int cardId, int userId) addCardCollectionEvent,
    required TResult Function(CheckCardRequestModel request, int cardId)
        checkCardEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getCardListEvent,
    TResult? Function(int id)? getCardByIdEvent,
    TResult? Function(String url)? getCardByScannerEvent,
    TResult? Function(int cardId, int userId)? addCardCollectionEvent,
    TResult? Function(CheckCardRequestModel request, int cardId)?
        checkCardEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getCardListEvent,
    TResult Function(int id)? getCardByIdEvent,
    TResult Function(String url)? getCardByScannerEvent,
    TResult Function(int cardId, int userId)? addCardCollectionEvent,
    TResult Function(CheckCardRequestModel request, int cardId)? checkCardEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCardListEvent value) getCardListEvent,
    required TResult Function(_GetCardByIdEvent value) getCardByIdEvent,
    required TResult Function(_GetCardByScannerEvent value)
        getCardByScannerEvent,
    required TResult Function(_AddCardCollectionEvent value)
        addCardCollectionEvent,
    required TResult Function(_CheckCardEvent value) checkCardEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCardListEvent value)? getCardListEvent,
    TResult? Function(_GetCardByIdEvent value)? getCardByIdEvent,
    TResult? Function(_GetCardByScannerEvent value)? getCardByScannerEvent,
    TResult? Function(_AddCardCollectionEvent value)? addCardCollectionEvent,
    TResult? Function(_CheckCardEvent value)? checkCardEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCardListEvent value)? getCardListEvent,
    TResult Function(_GetCardByIdEvent value)? getCardByIdEvent,
    TResult Function(_GetCardByScannerEvent value)? getCardByScannerEvent,
    TResult Function(_AddCardCollectionEvent value)? addCardCollectionEvent,
    TResult Function(_CheckCardEvent value)? checkCardEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardEventCopyWith<$Res> {
  factory $CardEventCopyWith(CardEvent value, $Res Function(CardEvent) then) =
      _$CardEventCopyWithImpl<$Res, CardEvent>;
}

/// @nodoc
class _$CardEventCopyWithImpl<$Res, $Val extends CardEvent>
    implements $CardEventCopyWith<$Res> {
  _$CardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCardListEventImplCopyWith<$Res> {
  factory _$$GetCardListEventImplCopyWith(_$GetCardListEventImpl value,
          $Res Function(_$GetCardListEventImpl) then) =
      __$$GetCardListEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetCardListEventImplCopyWithImpl<$Res>
    extends _$CardEventCopyWithImpl<$Res, _$GetCardListEventImpl>
    implements _$$GetCardListEventImplCopyWith<$Res> {
  __$$GetCardListEventImplCopyWithImpl(_$GetCardListEventImpl _value,
      $Res Function(_$GetCardListEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetCardListEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetCardListEventImpl
    with DiagnosticableTreeMixin
    implements _GetCardListEvent {
  const _$GetCardListEventImpl({required this.id});

  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CardEvent.getCardListEvent(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CardEvent.getCardListEvent'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCardListEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCardListEventImplCopyWith<_$GetCardListEventImpl> get copyWith =>
      __$$GetCardListEventImplCopyWithImpl<_$GetCardListEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getCardListEvent,
    required TResult Function(int id) getCardByIdEvent,
    required TResult Function(String url) getCardByScannerEvent,
    required TResult Function(int cardId, int userId) addCardCollectionEvent,
    required TResult Function(CheckCardRequestModel request, int cardId)
        checkCardEvent,
  }) {
    return getCardListEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getCardListEvent,
    TResult? Function(int id)? getCardByIdEvent,
    TResult? Function(String url)? getCardByScannerEvent,
    TResult? Function(int cardId, int userId)? addCardCollectionEvent,
    TResult? Function(CheckCardRequestModel request, int cardId)?
        checkCardEvent,
  }) {
    return getCardListEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getCardListEvent,
    TResult Function(int id)? getCardByIdEvent,
    TResult Function(String url)? getCardByScannerEvent,
    TResult Function(int cardId, int userId)? addCardCollectionEvent,
    TResult Function(CheckCardRequestModel request, int cardId)? checkCardEvent,
    required TResult orElse(),
  }) {
    if (getCardListEvent != null) {
      return getCardListEvent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCardListEvent value) getCardListEvent,
    required TResult Function(_GetCardByIdEvent value) getCardByIdEvent,
    required TResult Function(_GetCardByScannerEvent value)
        getCardByScannerEvent,
    required TResult Function(_AddCardCollectionEvent value)
        addCardCollectionEvent,
    required TResult Function(_CheckCardEvent value) checkCardEvent,
  }) {
    return getCardListEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCardListEvent value)? getCardListEvent,
    TResult? Function(_GetCardByIdEvent value)? getCardByIdEvent,
    TResult? Function(_GetCardByScannerEvent value)? getCardByScannerEvent,
    TResult? Function(_AddCardCollectionEvent value)? addCardCollectionEvent,
    TResult? Function(_CheckCardEvent value)? checkCardEvent,
  }) {
    return getCardListEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCardListEvent value)? getCardListEvent,
    TResult Function(_GetCardByIdEvent value)? getCardByIdEvent,
    TResult Function(_GetCardByScannerEvent value)? getCardByScannerEvent,
    TResult Function(_AddCardCollectionEvent value)? addCardCollectionEvent,
    TResult Function(_CheckCardEvent value)? checkCardEvent,
    required TResult orElse(),
  }) {
    if (getCardListEvent != null) {
      return getCardListEvent(this);
    }
    return orElse();
  }
}

abstract class _GetCardListEvent implements CardEvent {
  const factory _GetCardListEvent({required final int id}) =
      _$GetCardListEventImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$GetCardListEventImplCopyWith<_$GetCardListEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCardByIdEventImplCopyWith<$Res> {
  factory _$$GetCardByIdEventImplCopyWith(_$GetCardByIdEventImpl value,
          $Res Function(_$GetCardByIdEventImpl) then) =
      __$$GetCardByIdEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetCardByIdEventImplCopyWithImpl<$Res>
    extends _$CardEventCopyWithImpl<$Res, _$GetCardByIdEventImpl>
    implements _$$GetCardByIdEventImplCopyWith<$Res> {
  __$$GetCardByIdEventImplCopyWithImpl(_$GetCardByIdEventImpl _value,
      $Res Function(_$GetCardByIdEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetCardByIdEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetCardByIdEventImpl
    with DiagnosticableTreeMixin
    implements _GetCardByIdEvent {
  const _$GetCardByIdEventImpl({required this.id});

  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CardEvent.getCardByIdEvent(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CardEvent.getCardByIdEvent'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCardByIdEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCardByIdEventImplCopyWith<_$GetCardByIdEventImpl> get copyWith =>
      __$$GetCardByIdEventImplCopyWithImpl<_$GetCardByIdEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getCardListEvent,
    required TResult Function(int id) getCardByIdEvent,
    required TResult Function(String url) getCardByScannerEvent,
    required TResult Function(int cardId, int userId) addCardCollectionEvent,
    required TResult Function(CheckCardRequestModel request, int cardId)
        checkCardEvent,
  }) {
    return getCardByIdEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getCardListEvent,
    TResult? Function(int id)? getCardByIdEvent,
    TResult? Function(String url)? getCardByScannerEvent,
    TResult? Function(int cardId, int userId)? addCardCollectionEvent,
    TResult? Function(CheckCardRequestModel request, int cardId)?
        checkCardEvent,
  }) {
    return getCardByIdEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getCardListEvent,
    TResult Function(int id)? getCardByIdEvent,
    TResult Function(String url)? getCardByScannerEvent,
    TResult Function(int cardId, int userId)? addCardCollectionEvent,
    TResult Function(CheckCardRequestModel request, int cardId)? checkCardEvent,
    required TResult orElse(),
  }) {
    if (getCardByIdEvent != null) {
      return getCardByIdEvent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCardListEvent value) getCardListEvent,
    required TResult Function(_GetCardByIdEvent value) getCardByIdEvent,
    required TResult Function(_GetCardByScannerEvent value)
        getCardByScannerEvent,
    required TResult Function(_AddCardCollectionEvent value)
        addCardCollectionEvent,
    required TResult Function(_CheckCardEvent value) checkCardEvent,
  }) {
    return getCardByIdEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCardListEvent value)? getCardListEvent,
    TResult? Function(_GetCardByIdEvent value)? getCardByIdEvent,
    TResult? Function(_GetCardByScannerEvent value)? getCardByScannerEvent,
    TResult? Function(_AddCardCollectionEvent value)? addCardCollectionEvent,
    TResult? Function(_CheckCardEvent value)? checkCardEvent,
  }) {
    return getCardByIdEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCardListEvent value)? getCardListEvent,
    TResult Function(_GetCardByIdEvent value)? getCardByIdEvent,
    TResult Function(_GetCardByScannerEvent value)? getCardByScannerEvent,
    TResult Function(_AddCardCollectionEvent value)? addCardCollectionEvent,
    TResult Function(_CheckCardEvent value)? checkCardEvent,
    required TResult orElse(),
  }) {
    if (getCardByIdEvent != null) {
      return getCardByIdEvent(this);
    }
    return orElse();
  }
}

abstract class _GetCardByIdEvent implements CardEvent {
  const factory _GetCardByIdEvent({required final int id}) =
      _$GetCardByIdEventImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$GetCardByIdEventImplCopyWith<_$GetCardByIdEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCardByScannerEventImplCopyWith<$Res> {
  factory _$$GetCardByScannerEventImplCopyWith(
          _$GetCardByScannerEventImpl value,
          $Res Function(_$GetCardByScannerEventImpl) then) =
      __$$GetCardByScannerEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$GetCardByScannerEventImplCopyWithImpl<$Res>
    extends _$CardEventCopyWithImpl<$Res, _$GetCardByScannerEventImpl>
    implements _$$GetCardByScannerEventImplCopyWith<$Res> {
  __$$GetCardByScannerEventImplCopyWithImpl(_$GetCardByScannerEventImpl _value,
      $Res Function(_$GetCardByScannerEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$GetCardByScannerEventImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCardByScannerEventImpl
    with DiagnosticableTreeMixin
    implements _GetCardByScannerEvent {
  const _$GetCardByScannerEventImpl({required this.url});

  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CardEvent.getCardByScannerEvent(url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CardEvent.getCardByScannerEvent'))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCardByScannerEventImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCardByScannerEventImplCopyWith<_$GetCardByScannerEventImpl>
      get copyWith => __$$GetCardByScannerEventImplCopyWithImpl<
          _$GetCardByScannerEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getCardListEvent,
    required TResult Function(int id) getCardByIdEvent,
    required TResult Function(String url) getCardByScannerEvent,
    required TResult Function(int cardId, int userId) addCardCollectionEvent,
    required TResult Function(CheckCardRequestModel request, int cardId)
        checkCardEvent,
  }) {
    return getCardByScannerEvent(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getCardListEvent,
    TResult? Function(int id)? getCardByIdEvent,
    TResult? Function(String url)? getCardByScannerEvent,
    TResult? Function(int cardId, int userId)? addCardCollectionEvent,
    TResult? Function(CheckCardRequestModel request, int cardId)?
        checkCardEvent,
  }) {
    return getCardByScannerEvent?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getCardListEvent,
    TResult Function(int id)? getCardByIdEvent,
    TResult Function(String url)? getCardByScannerEvent,
    TResult Function(int cardId, int userId)? addCardCollectionEvent,
    TResult Function(CheckCardRequestModel request, int cardId)? checkCardEvent,
    required TResult orElse(),
  }) {
    if (getCardByScannerEvent != null) {
      return getCardByScannerEvent(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCardListEvent value) getCardListEvent,
    required TResult Function(_GetCardByIdEvent value) getCardByIdEvent,
    required TResult Function(_GetCardByScannerEvent value)
        getCardByScannerEvent,
    required TResult Function(_AddCardCollectionEvent value)
        addCardCollectionEvent,
    required TResult Function(_CheckCardEvent value) checkCardEvent,
  }) {
    return getCardByScannerEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCardListEvent value)? getCardListEvent,
    TResult? Function(_GetCardByIdEvent value)? getCardByIdEvent,
    TResult? Function(_GetCardByScannerEvent value)? getCardByScannerEvent,
    TResult? Function(_AddCardCollectionEvent value)? addCardCollectionEvent,
    TResult? Function(_CheckCardEvent value)? checkCardEvent,
  }) {
    return getCardByScannerEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCardListEvent value)? getCardListEvent,
    TResult Function(_GetCardByIdEvent value)? getCardByIdEvent,
    TResult Function(_GetCardByScannerEvent value)? getCardByScannerEvent,
    TResult Function(_AddCardCollectionEvent value)? addCardCollectionEvent,
    TResult Function(_CheckCardEvent value)? checkCardEvent,
    required TResult orElse(),
  }) {
    if (getCardByScannerEvent != null) {
      return getCardByScannerEvent(this);
    }
    return orElse();
  }
}

abstract class _GetCardByScannerEvent implements CardEvent {
  const factory _GetCardByScannerEvent({required final String url}) =
      _$GetCardByScannerEventImpl;

  String get url;
  @JsonKey(ignore: true)
  _$$GetCardByScannerEventImplCopyWith<_$GetCardByScannerEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCardCollectionEventImplCopyWith<$Res> {
  factory _$$AddCardCollectionEventImplCopyWith(
          _$AddCardCollectionEventImpl value,
          $Res Function(_$AddCardCollectionEventImpl) then) =
      __$$AddCardCollectionEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int cardId, int userId});
}

/// @nodoc
class __$$AddCardCollectionEventImplCopyWithImpl<$Res>
    extends _$CardEventCopyWithImpl<$Res, _$AddCardCollectionEventImpl>
    implements _$$AddCardCollectionEventImplCopyWith<$Res> {
  __$$AddCardCollectionEventImplCopyWithImpl(
      _$AddCardCollectionEventImpl _value,
      $Res Function(_$AddCardCollectionEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardId = null,
    Object? userId = null,
  }) {
    return _then(_$AddCardCollectionEventImpl(
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddCardCollectionEventImpl
    with DiagnosticableTreeMixin
    implements _AddCardCollectionEvent {
  const _$AddCardCollectionEventImpl(
      {required this.cardId, required this.userId});

  @override
  final int cardId;
  @override
  final int userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CardEvent.addCardCollectionEvent(cardId: $cardId, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CardEvent.addCardCollectionEvent'))
      ..add(DiagnosticsProperty('cardId', cardId))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCardCollectionEventImpl &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardId, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCardCollectionEventImplCopyWith<_$AddCardCollectionEventImpl>
      get copyWith => __$$AddCardCollectionEventImplCopyWithImpl<
          _$AddCardCollectionEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getCardListEvent,
    required TResult Function(int id) getCardByIdEvent,
    required TResult Function(String url) getCardByScannerEvent,
    required TResult Function(int cardId, int userId) addCardCollectionEvent,
    required TResult Function(CheckCardRequestModel request, int cardId)
        checkCardEvent,
  }) {
    return addCardCollectionEvent(cardId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getCardListEvent,
    TResult? Function(int id)? getCardByIdEvent,
    TResult? Function(String url)? getCardByScannerEvent,
    TResult? Function(int cardId, int userId)? addCardCollectionEvent,
    TResult? Function(CheckCardRequestModel request, int cardId)?
        checkCardEvent,
  }) {
    return addCardCollectionEvent?.call(cardId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getCardListEvent,
    TResult Function(int id)? getCardByIdEvent,
    TResult Function(String url)? getCardByScannerEvent,
    TResult Function(int cardId, int userId)? addCardCollectionEvent,
    TResult Function(CheckCardRequestModel request, int cardId)? checkCardEvent,
    required TResult orElse(),
  }) {
    if (addCardCollectionEvent != null) {
      return addCardCollectionEvent(cardId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCardListEvent value) getCardListEvent,
    required TResult Function(_GetCardByIdEvent value) getCardByIdEvent,
    required TResult Function(_GetCardByScannerEvent value)
        getCardByScannerEvent,
    required TResult Function(_AddCardCollectionEvent value)
        addCardCollectionEvent,
    required TResult Function(_CheckCardEvent value) checkCardEvent,
  }) {
    return addCardCollectionEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCardListEvent value)? getCardListEvent,
    TResult? Function(_GetCardByIdEvent value)? getCardByIdEvent,
    TResult? Function(_GetCardByScannerEvent value)? getCardByScannerEvent,
    TResult? Function(_AddCardCollectionEvent value)? addCardCollectionEvent,
    TResult? Function(_CheckCardEvent value)? checkCardEvent,
  }) {
    return addCardCollectionEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCardListEvent value)? getCardListEvent,
    TResult Function(_GetCardByIdEvent value)? getCardByIdEvent,
    TResult Function(_GetCardByScannerEvent value)? getCardByScannerEvent,
    TResult Function(_AddCardCollectionEvent value)? addCardCollectionEvent,
    TResult Function(_CheckCardEvent value)? checkCardEvent,
    required TResult orElse(),
  }) {
    if (addCardCollectionEvent != null) {
      return addCardCollectionEvent(this);
    }
    return orElse();
  }
}

abstract class _AddCardCollectionEvent implements CardEvent {
  const factory _AddCardCollectionEvent(
      {required final int cardId,
      required final int userId}) = _$AddCardCollectionEventImpl;

  int get cardId;
  int get userId;
  @JsonKey(ignore: true)
  _$$AddCardCollectionEventImplCopyWith<_$AddCardCollectionEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckCardEventImplCopyWith<$Res> {
  factory _$$CheckCardEventImplCopyWith(_$CheckCardEventImpl value,
          $Res Function(_$CheckCardEventImpl) then) =
      __$$CheckCardEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CheckCardRequestModel request, int cardId});

  $CheckCardRequestModelCopyWith<$Res> get request;
}

/// @nodoc
class __$$CheckCardEventImplCopyWithImpl<$Res>
    extends _$CardEventCopyWithImpl<$Res, _$CheckCardEventImpl>
    implements _$$CheckCardEventImplCopyWith<$Res> {
  __$$CheckCardEventImplCopyWithImpl(
      _$CheckCardEventImpl _value, $Res Function(_$CheckCardEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? cardId = null,
  }) {
    return _then(_$CheckCardEventImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as CheckCardRequestModel,
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CheckCardRequestModelCopyWith<$Res> get request {
    return $CheckCardRequestModelCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$CheckCardEventImpl
    with DiagnosticableTreeMixin
    implements _CheckCardEvent {
  const _$CheckCardEventImpl({required this.request, required this.cardId});

  @override
  final CheckCardRequestModel request;
  @override
  final int cardId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CardEvent.checkCardEvent(request: $request, cardId: $cardId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CardEvent.checkCardEvent'))
      ..add(DiagnosticsProperty('request', request))
      ..add(DiagnosticsProperty('cardId', cardId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckCardEventImpl &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.cardId, cardId) || other.cardId == cardId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request, cardId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckCardEventImplCopyWith<_$CheckCardEventImpl> get copyWith =>
      __$$CheckCardEventImplCopyWithImpl<_$CheckCardEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getCardListEvent,
    required TResult Function(int id) getCardByIdEvent,
    required TResult Function(String url) getCardByScannerEvent,
    required TResult Function(int cardId, int userId) addCardCollectionEvent,
    required TResult Function(CheckCardRequestModel request, int cardId)
        checkCardEvent,
  }) {
    return checkCardEvent(request, cardId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getCardListEvent,
    TResult? Function(int id)? getCardByIdEvent,
    TResult? Function(String url)? getCardByScannerEvent,
    TResult? Function(int cardId, int userId)? addCardCollectionEvent,
    TResult? Function(CheckCardRequestModel request, int cardId)?
        checkCardEvent,
  }) {
    return checkCardEvent?.call(request, cardId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getCardListEvent,
    TResult Function(int id)? getCardByIdEvent,
    TResult Function(String url)? getCardByScannerEvent,
    TResult Function(int cardId, int userId)? addCardCollectionEvent,
    TResult Function(CheckCardRequestModel request, int cardId)? checkCardEvent,
    required TResult orElse(),
  }) {
    if (checkCardEvent != null) {
      return checkCardEvent(request, cardId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCardListEvent value) getCardListEvent,
    required TResult Function(_GetCardByIdEvent value) getCardByIdEvent,
    required TResult Function(_GetCardByScannerEvent value)
        getCardByScannerEvent,
    required TResult Function(_AddCardCollectionEvent value)
        addCardCollectionEvent,
    required TResult Function(_CheckCardEvent value) checkCardEvent,
  }) {
    return checkCardEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCardListEvent value)? getCardListEvent,
    TResult? Function(_GetCardByIdEvent value)? getCardByIdEvent,
    TResult? Function(_GetCardByScannerEvent value)? getCardByScannerEvent,
    TResult? Function(_AddCardCollectionEvent value)? addCardCollectionEvent,
    TResult? Function(_CheckCardEvent value)? checkCardEvent,
  }) {
    return checkCardEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCardListEvent value)? getCardListEvent,
    TResult Function(_GetCardByIdEvent value)? getCardByIdEvent,
    TResult Function(_GetCardByScannerEvent value)? getCardByScannerEvent,
    TResult Function(_AddCardCollectionEvent value)? addCardCollectionEvent,
    TResult Function(_CheckCardEvent value)? checkCardEvent,
    required TResult orElse(),
  }) {
    if (checkCardEvent != null) {
      return checkCardEvent(this);
    }
    return orElse();
  }
}

abstract class _CheckCardEvent implements CardEvent {
  const factory _CheckCardEvent(
      {required final CheckCardRequestModel request,
      required final int cardId}) = _$CheckCardEventImpl;

  CheckCardRequestModel get request;
  int get cardId;
  @JsonKey(ignore: true)
  _$$CheckCardEventImplCopyWith<_$CheckCardEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<CardAlbumResponseEntity>? cardList,
            CardIdDataEntity? card,
            UserDataResponseEntity? userData,
            CheckCardResponseEntity? checkCard)
        success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<CardAlbumResponseEntity>? cardList,
            CardIdDataEntity? card,
            UserDataResponseEntity? userData,
            CheckCardResponseEntity? checkCard)?
        success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<CardAlbumResponseEntity>? cardList,
            CardIdDataEntity? card,
            UserDataResponseEntity? userData,
            CheckCardResponseEntity? checkCard)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CardLoadingState value) loading,
    required TResult Function(_CardSuccessState value) success,
    required TResult Function(_CardFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CardLoadingState value)? loading,
    TResult? Function(_CardSuccessState value)? success,
    TResult? Function(_CardFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CardLoadingState value)? loading,
    TResult Function(_CardSuccessState value)? success,
    TResult Function(_CardFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardStateCopyWith<$Res> {
  factory $CardStateCopyWith(CardState value, $Res Function(CardState) then) =
      _$CardStateCopyWithImpl<$Res, CardState>;
}

/// @nodoc
class _$CardStateCopyWithImpl<$Res, $Val extends CardState>
    implements $CardStateCopyWith<$Res> {
  _$CardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CardStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CardState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CardState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<CardAlbumResponseEntity>? cardList,
            CardIdDataEntity? card,
            UserDataResponseEntity? userData,
            CheckCardResponseEntity? checkCard)
        success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<CardAlbumResponseEntity>? cardList,
            CardIdDataEntity? card,
            UserDataResponseEntity? userData,
            CheckCardResponseEntity? checkCard)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<CardAlbumResponseEntity>? cardList,
            CardIdDataEntity? card,
            UserDataResponseEntity? userData,
            CheckCardResponseEntity? checkCard)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CardLoadingState value) loading,
    required TResult Function(_CardSuccessState value) success,
    required TResult Function(_CardFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CardLoadingState value)? loading,
    TResult? Function(_CardSuccessState value)? success,
    TResult? Function(_CardFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CardLoadingState value)? loading,
    TResult Function(_CardSuccessState value)? success,
    TResult Function(_CardFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CardState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CardLoadingStateImplCopyWith<$Res> {
  factory _$$CardLoadingStateImplCopyWith(_$CardLoadingStateImpl value,
          $Res Function(_$CardLoadingStateImpl) then) =
      __$$CardLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CardLoadingStateImplCopyWithImpl<$Res>
    extends _$CardStateCopyWithImpl<$Res, _$CardLoadingStateImpl>
    implements _$$CardLoadingStateImplCopyWith<$Res> {
  __$$CardLoadingStateImplCopyWithImpl(_$CardLoadingStateImpl _value,
      $Res Function(_$CardLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CardLoadingStateImpl
    with DiagnosticableTreeMixin
    implements _CardLoadingState {
  const _$CardLoadingStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CardState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CardState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CardLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<CardAlbumResponseEntity>? cardList,
            CardIdDataEntity? card,
            UserDataResponseEntity? userData,
            CheckCardResponseEntity? checkCard)
        success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<CardAlbumResponseEntity>? cardList,
            CardIdDataEntity? card,
            UserDataResponseEntity? userData,
            CheckCardResponseEntity? checkCard)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<CardAlbumResponseEntity>? cardList,
            CardIdDataEntity? card,
            UserDataResponseEntity? userData,
            CheckCardResponseEntity? checkCard)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CardLoadingState value) loading,
    required TResult Function(_CardSuccessState value) success,
    required TResult Function(_CardFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CardLoadingState value)? loading,
    TResult? Function(_CardSuccessState value)? success,
    TResult? Function(_CardFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CardLoadingState value)? loading,
    TResult Function(_CardSuccessState value)? success,
    TResult Function(_CardFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CardLoadingState implements CardState {
  const factory _CardLoadingState() = _$CardLoadingStateImpl;
}

/// @nodoc
abstract class _$$CardSuccessStateImplCopyWith<$Res> {
  factory _$$CardSuccessStateImplCopyWith(_$CardSuccessStateImpl value,
          $Res Function(_$CardSuccessStateImpl) then) =
      __$$CardSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<CardAlbumResponseEntity>? cardList,
      CardIdDataEntity? card,
      UserDataResponseEntity? userData,
      CheckCardResponseEntity? checkCard});

  $CardIdDataEntityCopyWith<$Res>? get card;
  $UserDataResponseEntityCopyWith<$Res>? get userData;
  $CheckCardResponseEntityCopyWith<$Res>? get checkCard;
}

/// @nodoc
class __$$CardSuccessStateImplCopyWithImpl<$Res>
    extends _$CardStateCopyWithImpl<$Res, _$CardSuccessStateImpl>
    implements _$$CardSuccessStateImplCopyWith<$Res> {
  __$$CardSuccessStateImplCopyWithImpl(_$CardSuccessStateImpl _value,
      $Res Function(_$CardSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardList = freezed,
    Object? card = freezed,
    Object? userData = freezed,
    Object? checkCard = freezed,
  }) {
    return _then(_$CardSuccessStateImpl(
      cardList: freezed == cardList
          ? _value._cardList
          : cardList // ignore: cast_nullable_to_non_nullable
              as List<CardAlbumResponseEntity>?,
      card: freezed == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as CardIdDataEntity?,
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserDataResponseEntity?,
      checkCard: freezed == checkCard
          ? _value.checkCard
          : checkCard // ignore: cast_nullable_to_non_nullable
              as CheckCardResponseEntity?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataEntityCopyWith<$Res>? get card {
    if (_value.card == null) {
      return null;
    }

    return $CardIdDataEntityCopyWith<$Res>(_value.card!, (value) {
      return _then(_value.copyWith(card: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataResponseEntityCopyWith<$Res>? get userData {
    if (_value.userData == null) {
      return null;
    }

    return $UserDataResponseEntityCopyWith<$Res>(_value.userData!, (value) {
      return _then(_value.copyWith(userData: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CheckCardResponseEntityCopyWith<$Res>? get checkCard {
    if (_value.checkCard == null) {
      return null;
    }

    return $CheckCardResponseEntityCopyWith<$Res>(_value.checkCard!, (value) {
      return _then(_value.copyWith(checkCard: value));
    });
  }
}

/// @nodoc

class _$CardSuccessStateImpl
    with DiagnosticableTreeMixin
    implements _CardSuccessState {
  const _$CardSuccessStateImpl(
      {final List<CardAlbumResponseEntity>? cardList,
      this.card,
      this.userData,
      this.checkCard})
      : _cardList = cardList;

  final List<CardAlbumResponseEntity>? _cardList;
  @override
  List<CardAlbumResponseEntity>? get cardList {
    final value = _cardList;
    if (value == null) return null;
    if (_cardList is EqualUnmodifiableListView) return _cardList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CardIdDataEntity? card;
  @override
  final UserDataResponseEntity? userData;
  @override
  final CheckCardResponseEntity? checkCard;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CardState.success(cardList: $cardList, card: $card, userData: $userData, checkCard: $checkCard)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CardState.success'))
      ..add(DiagnosticsProperty('cardList', cardList))
      ..add(DiagnosticsProperty('card', card))
      ..add(DiagnosticsProperty('userData', userData))
      ..add(DiagnosticsProperty('checkCard', checkCard));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardSuccessStateImpl &&
            const DeepCollectionEquality().equals(other._cardList, _cardList) &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            (identical(other.checkCard, checkCard) ||
                other.checkCard == checkCard));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cardList),
      card,
      userData,
      checkCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardSuccessStateImplCopyWith<_$CardSuccessStateImpl> get copyWith =>
      __$$CardSuccessStateImplCopyWithImpl<_$CardSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<CardAlbumResponseEntity>? cardList,
            CardIdDataEntity? card,
            UserDataResponseEntity? userData,
            CheckCardResponseEntity? checkCard)
        success,
    required TResult Function(String message) failure,
  }) {
    return success(cardList, card, userData, checkCard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<CardAlbumResponseEntity>? cardList,
            CardIdDataEntity? card,
            UserDataResponseEntity? userData,
            CheckCardResponseEntity? checkCard)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(cardList, card, userData, checkCard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<CardAlbumResponseEntity>? cardList,
            CardIdDataEntity? card,
            UserDataResponseEntity? userData,
            CheckCardResponseEntity? checkCard)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(cardList, card, userData, checkCard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CardLoadingState value) loading,
    required TResult Function(_CardSuccessState value) success,
    required TResult Function(_CardFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CardLoadingState value)? loading,
    TResult? Function(_CardSuccessState value)? success,
    TResult? Function(_CardFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CardLoadingState value)? loading,
    TResult Function(_CardSuccessState value)? success,
    TResult Function(_CardFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _CardSuccessState implements CardState {
  const factory _CardSuccessState(
      {final List<CardAlbumResponseEntity>? cardList,
      final CardIdDataEntity? card,
      final UserDataResponseEntity? userData,
      final CheckCardResponseEntity? checkCard}) = _$CardSuccessStateImpl;

  List<CardAlbumResponseEntity>? get cardList;
  CardIdDataEntity? get card;
  UserDataResponseEntity? get userData;
  CheckCardResponseEntity? get checkCard;
  @JsonKey(ignore: true)
  _$$CardSuccessStateImplCopyWith<_$CardSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CardFailureStateImplCopyWith<$Res> {
  factory _$$CardFailureStateImplCopyWith(_$CardFailureStateImpl value,
          $Res Function(_$CardFailureStateImpl) then) =
      __$$CardFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CardFailureStateImplCopyWithImpl<$Res>
    extends _$CardStateCopyWithImpl<$Res, _$CardFailureStateImpl>
    implements _$$CardFailureStateImplCopyWith<$Res> {
  __$$CardFailureStateImplCopyWithImpl(_$CardFailureStateImpl _value,
      $Res Function(_$CardFailureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CardFailureStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CardFailureStateImpl
    with DiagnosticableTreeMixin
    implements _CardFailureState {
  const _$CardFailureStateImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CardState.failure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CardState.failure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardFailureStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardFailureStateImplCopyWith<_$CardFailureStateImpl> get copyWith =>
      __$$CardFailureStateImplCopyWithImpl<_$CardFailureStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<CardAlbumResponseEntity>? cardList,
            CardIdDataEntity? card,
            UserDataResponseEntity? userData,
            CheckCardResponseEntity? checkCard)
        success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<CardAlbumResponseEntity>? cardList,
            CardIdDataEntity? card,
            UserDataResponseEntity? userData,
            CheckCardResponseEntity? checkCard)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<CardAlbumResponseEntity>? cardList,
            CardIdDataEntity? card,
            UserDataResponseEntity? userData,
            CheckCardResponseEntity? checkCard)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CardLoadingState value) loading,
    required TResult Function(_CardSuccessState value) success,
    required TResult Function(_CardFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CardLoadingState value)? loading,
    TResult? Function(_CardSuccessState value)? success,
    TResult? Function(_CardFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CardLoadingState value)? loading,
    TResult Function(_CardSuccessState value)? success,
    TResult Function(_CardFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _CardFailureState implements CardState {
  const factory _CardFailureState(final String message) =
      _$CardFailureStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$CardFailureStateImplCopyWith<_$CardFailureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
