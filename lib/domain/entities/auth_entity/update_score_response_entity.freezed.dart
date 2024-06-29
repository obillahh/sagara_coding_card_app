// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_score_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateScoreResponseEntity _$UpdateScoreResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _UpdateScoreResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$UpdateScoreResponseEntity {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "provider")
  String get provider => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: "resetPasswordToken")
  String get resetPasswordToken => throw _privateConstructorUsedError;
  @JsonKey(name: "confirmationToken")
  dynamic get confirmationToken => throw _privateConstructorUsedError;
  @JsonKey(name: "confirmed")
  bool get confirmed => throw _privateConstructorUsedError;
  @JsonKey(name: "blocked")
  bool get blocked => throw _privateConstructorUsedError;
  @JsonKey(name: "collection_card")
  int get collectionCard => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "scores")
  int get scores => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateScoreResponseEntityCopyWith<UpdateScoreResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateScoreResponseEntityCopyWith<$Res> {
  factory $UpdateScoreResponseEntityCopyWith(UpdateScoreResponseEntity value,
          $Res Function(UpdateScoreResponseEntity) then) =
      _$UpdateScoreResponseEntityCopyWithImpl<$Res, UpdateScoreResponseEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "provider") String provider,
      @JsonKey(name: "password") String password,
      @JsonKey(name: "resetPasswordToken") String resetPasswordToken,
      @JsonKey(name: "confirmationToken") dynamic confirmationToken,
      @JsonKey(name: "confirmed") bool confirmed,
      @JsonKey(name: "blocked") bool blocked,
      @JsonKey(name: "collection_card") int collectionCard,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "scores") int scores});
}

/// @nodoc
class _$UpdateScoreResponseEntityCopyWithImpl<$Res,
        $Val extends UpdateScoreResponseEntity>
    implements $UpdateScoreResponseEntityCopyWith<$Res> {
  _$UpdateScoreResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? provider = null,
    Object? password = null,
    Object? resetPasswordToken = null,
    Object? confirmationToken = freezed,
    Object? confirmed = null,
    Object? blocked = null,
    Object? collectionCard = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? scores = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      resetPasswordToken: null == resetPasswordToken
          ? _value.resetPasswordToken
          : resetPasswordToken // ignore: cast_nullable_to_non_nullable
              as String,
      confirmationToken: freezed == confirmationToken
          ? _value.confirmationToken
          : confirmationToken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      confirmed: null == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      blocked: null == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool,
      collectionCard: null == collectionCard
          ? _value.collectionCard
          : collectionCard // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateScoreResponseEntityImplCopyWith<$Res>
    implements $UpdateScoreResponseEntityCopyWith<$Res> {
  factory _$$UpdateScoreResponseEntityImplCopyWith(
          _$UpdateScoreResponseEntityImpl value,
          $Res Function(_$UpdateScoreResponseEntityImpl) then) =
      __$$UpdateScoreResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "provider") String provider,
      @JsonKey(name: "password") String password,
      @JsonKey(name: "resetPasswordToken") String resetPasswordToken,
      @JsonKey(name: "confirmationToken") dynamic confirmationToken,
      @JsonKey(name: "confirmed") bool confirmed,
      @JsonKey(name: "blocked") bool blocked,
      @JsonKey(name: "collection_card") int collectionCard,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "scores") int scores});
}

/// @nodoc
class __$$UpdateScoreResponseEntityImplCopyWithImpl<$Res>
    extends _$UpdateScoreResponseEntityCopyWithImpl<$Res,
        _$UpdateScoreResponseEntityImpl>
    implements _$$UpdateScoreResponseEntityImplCopyWith<$Res> {
  __$$UpdateScoreResponseEntityImplCopyWithImpl(
      _$UpdateScoreResponseEntityImpl _value,
      $Res Function(_$UpdateScoreResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? provider = null,
    Object? password = null,
    Object? resetPasswordToken = null,
    Object? confirmationToken = freezed,
    Object? confirmed = null,
    Object? blocked = null,
    Object? collectionCard = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? scores = null,
  }) {
    return _then(_$UpdateScoreResponseEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      resetPasswordToken: null == resetPasswordToken
          ? _value.resetPasswordToken
          : resetPasswordToken // ignore: cast_nullable_to_non_nullable
              as String,
      confirmationToken: freezed == confirmationToken
          ? _value.confirmationToken
          : confirmationToken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      confirmed: null == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      blocked: null == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool,
      collectionCard: null == collectionCard
          ? _value.collectionCard
          : collectionCard // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateScoreResponseEntityImpl implements _UpdateScoreResponseEntity {
  const _$UpdateScoreResponseEntityImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "username") required this.username,
      @JsonKey(name: "email") required this.email,
      @JsonKey(name: "provider") required this.provider,
      @JsonKey(name: "password") required this.password,
      @JsonKey(name: "resetPasswordToken") required this.resetPasswordToken,
      @JsonKey(name: "confirmationToken") required this.confirmationToken,
      @JsonKey(name: "confirmed") required this.confirmed,
      @JsonKey(name: "blocked") required this.blocked,
      @JsonKey(name: "collection_card") required this.collectionCard,
      @JsonKey(name: "createdAt") required this.createdAt,
      @JsonKey(name: "updatedAt") required this.updatedAt,
      @JsonKey(name: "scores") required this.scores});

  factory _$UpdateScoreResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateScoreResponseEntityImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "username")
  final String username;
  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "provider")
  final String provider;
  @override
  @JsonKey(name: "password")
  final String password;
  @override
  @JsonKey(name: "resetPasswordToken")
  final String resetPasswordToken;
  @override
  @JsonKey(name: "confirmationToken")
  final dynamic confirmationToken;
  @override
  @JsonKey(name: "confirmed")
  final bool confirmed;
  @override
  @JsonKey(name: "blocked")
  final bool blocked;
  @override
  @JsonKey(name: "collection_card")
  final int collectionCard;
  @override
  @JsonKey(name: "createdAt")
  final DateTime createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;
  @override
  @JsonKey(name: "scores")
  final int scores;

  @override
  String toString() {
    return 'UpdateScoreResponseEntity(id: $id, username: $username, email: $email, provider: $provider, password: $password, resetPasswordToken: $resetPasswordToken, confirmationToken: $confirmationToken, confirmed: $confirmed, blocked: $blocked, collectionCard: $collectionCard, createdAt: $createdAt, updatedAt: $updatedAt, scores: $scores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateScoreResponseEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.resetPasswordToken, resetPasswordToken) ||
                other.resetPasswordToken == resetPasswordToken) &&
            const DeepCollectionEquality()
                .equals(other.confirmationToken, confirmationToken) &&
            (identical(other.confirmed, confirmed) ||
                other.confirmed == confirmed) &&
            (identical(other.blocked, blocked) || other.blocked == blocked) &&
            (identical(other.collectionCard, collectionCard) ||
                other.collectionCard == collectionCard) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.scores, scores) || other.scores == scores));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      username,
      email,
      provider,
      password,
      resetPasswordToken,
      const DeepCollectionEquality().hash(confirmationToken),
      confirmed,
      blocked,
      collectionCard,
      createdAt,
      updatedAt,
      scores);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateScoreResponseEntityImplCopyWith<_$UpdateScoreResponseEntityImpl>
      get copyWith => __$$UpdateScoreResponseEntityImplCopyWithImpl<
          _$UpdateScoreResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateScoreResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _UpdateScoreResponseEntity implements UpdateScoreResponseEntity {
  const factory _UpdateScoreResponseEntity(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "username") required final String username,
          @JsonKey(name: "email") required final String email,
          @JsonKey(name: "provider") required final String provider,
          @JsonKey(name: "password") required final String password,
          @JsonKey(name: "resetPasswordToken")
          required final String resetPasswordToken,
          @JsonKey(name: "confirmationToken")
          required final dynamic confirmationToken,
          @JsonKey(name: "confirmed") required final bool confirmed,
          @JsonKey(name: "blocked") required final bool blocked,
          @JsonKey(name: "collection_card") required final int collectionCard,
          @JsonKey(name: "createdAt") required final DateTime createdAt,
          @JsonKey(name: "updatedAt") required final DateTime updatedAt,
          @JsonKey(name: "scores") required final int scores}) =
      _$UpdateScoreResponseEntityImpl;

  factory _UpdateScoreResponseEntity.fromJson(Map<String, dynamic> json) =
      _$UpdateScoreResponseEntityImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "username")
  String get username;
  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "provider")
  String get provider;
  @override
  @JsonKey(name: "password")
  String get password;
  @override
  @JsonKey(name: "resetPasswordToken")
  String get resetPasswordToken;
  @override
  @JsonKey(name: "confirmationToken")
  dynamic get confirmationToken;
  @override
  @JsonKey(name: "confirmed")
  bool get confirmed;
  @override
  @JsonKey(name: "blocked")
  bool get blocked;
  @override
  @JsonKey(name: "collection_card")
  int get collectionCard;
  @override
  @JsonKey(name: "createdAt")
  DateTime get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt;
  @override
  @JsonKey(name: "scores")
  int get scores;
  @override
  @JsonKey(ignore: true)
  _$$UpdateScoreResponseEntityImplCopyWith<_$UpdateScoreResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
