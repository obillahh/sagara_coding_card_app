// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_score_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateScoreResponseModel _$UpdateScoreResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateScoreResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateScoreResponseModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "provider")
  String? get provider => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: "resetPasswordToken")
  String? get resetPasswordToken => throw _privateConstructorUsedError;
  @JsonKey(name: "confirmationToken")
  dynamic get confirmationToken => throw _privateConstructorUsedError;
  @JsonKey(name: "confirmed")
  bool? get confirmed => throw _privateConstructorUsedError;
  @JsonKey(name: "blocked")
  bool? get blocked => throw _privateConstructorUsedError;
  @JsonKey(name: "collection_card")
  int? get collectionCard => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "scores")
  int? get scores => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateScoreResponseModelCopyWith<UpdateScoreResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateScoreResponseModelCopyWith<$Res> {
  factory $UpdateScoreResponseModelCopyWith(UpdateScoreResponseModel value,
          $Res Function(UpdateScoreResponseModel) then) =
      _$UpdateScoreResponseModelCopyWithImpl<$Res, UpdateScoreResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "provider") String? provider,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "resetPasswordToken") String? resetPasswordToken,
      @JsonKey(name: "confirmationToken") dynamic confirmationToken,
      @JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "blocked") bool? blocked,
      @JsonKey(name: "collection_card") int? collectionCard,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "scores") int? scores});
}

/// @nodoc
class _$UpdateScoreResponseModelCopyWithImpl<$Res,
        $Val extends UpdateScoreResponseModel>
    implements $UpdateScoreResponseModelCopyWith<$Res> {
  _$UpdateScoreResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? provider = freezed,
    Object? password = freezed,
    Object? resetPasswordToken = freezed,
    Object? confirmationToken = freezed,
    Object? confirmed = freezed,
    Object? blocked = freezed,
    Object? collectionCard = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? scores = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      resetPasswordToken: freezed == resetPasswordToken
          ? _value.resetPasswordToken
          : resetPasswordToken // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmationToken: freezed == confirmationToken
          ? _value.confirmationToken
          : confirmationToken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      confirmed: freezed == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      blocked: freezed == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      collectionCard: freezed == collectionCard
          ? _value.collectionCard
          : collectionCard // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scores: freezed == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateScoreResponseModelImplCopyWith<$Res>
    implements $UpdateScoreResponseModelCopyWith<$Res> {
  factory _$$UpdateScoreResponseModelImplCopyWith(
          _$UpdateScoreResponseModelImpl value,
          $Res Function(_$UpdateScoreResponseModelImpl) then) =
      __$$UpdateScoreResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "provider") String? provider,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "resetPasswordToken") String? resetPasswordToken,
      @JsonKey(name: "confirmationToken") dynamic confirmationToken,
      @JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "blocked") bool? blocked,
      @JsonKey(name: "collection_card") int? collectionCard,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "scores") int? scores});
}

/// @nodoc
class __$$UpdateScoreResponseModelImplCopyWithImpl<$Res>
    extends _$UpdateScoreResponseModelCopyWithImpl<$Res,
        _$UpdateScoreResponseModelImpl>
    implements _$$UpdateScoreResponseModelImplCopyWith<$Res> {
  __$$UpdateScoreResponseModelImplCopyWithImpl(
      _$UpdateScoreResponseModelImpl _value,
      $Res Function(_$UpdateScoreResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? provider = freezed,
    Object? password = freezed,
    Object? resetPasswordToken = freezed,
    Object? confirmationToken = freezed,
    Object? confirmed = freezed,
    Object? blocked = freezed,
    Object? collectionCard = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? scores = freezed,
  }) {
    return _then(_$UpdateScoreResponseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      resetPasswordToken: freezed == resetPasswordToken
          ? _value.resetPasswordToken
          : resetPasswordToken // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmationToken: freezed == confirmationToken
          ? _value.confirmationToken
          : confirmationToken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      confirmed: freezed == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      blocked: freezed == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      collectionCard: freezed == collectionCard
          ? _value.collectionCard
          : collectionCard // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scores: freezed == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateScoreResponseModelImpl implements _UpdateScoreResponseModel {
  const _$UpdateScoreResponseModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "provider") this.provider,
      @JsonKey(name: "password") this.password,
      @JsonKey(name: "resetPasswordToken") this.resetPasswordToken,
      @JsonKey(name: "confirmationToken") this.confirmationToken,
      @JsonKey(name: "confirmed") this.confirmed,
      @JsonKey(name: "blocked") this.blocked,
      @JsonKey(name: "collection_card") this.collectionCard,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "scores") this.scores});

  factory _$UpdateScoreResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateScoreResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "provider")
  final String? provider;
  @override
  @JsonKey(name: "password")
  final String? password;
  @override
  @JsonKey(name: "resetPasswordToken")
  final String? resetPasswordToken;
  @override
  @JsonKey(name: "confirmationToken")
  final dynamic confirmationToken;
  @override
  @JsonKey(name: "confirmed")
  final bool? confirmed;
  @override
  @JsonKey(name: "blocked")
  final bool? blocked;
  @override
  @JsonKey(name: "collection_card")
  final int? collectionCard;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "scores")
  final int? scores;

  @override
  String toString() {
    return 'UpdateScoreResponseModel(id: $id, username: $username, email: $email, provider: $provider, password: $password, resetPasswordToken: $resetPasswordToken, confirmationToken: $confirmationToken, confirmed: $confirmed, blocked: $blocked, collectionCard: $collectionCard, createdAt: $createdAt, updatedAt: $updatedAt, scores: $scores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateScoreResponseModelImpl &&
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
  _$$UpdateScoreResponseModelImplCopyWith<_$UpdateScoreResponseModelImpl>
      get copyWith => __$$UpdateScoreResponseModelImplCopyWithImpl<
          _$UpdateScoreResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateScoreResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateScoreResponseModel implements UpdateScoreResponseModel {
  const factory _UpdateScoreResponseModel(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "username") final String? username,
          @JsonKey(name: "email") final String? email,
          @JsonKey(name: "provider") final String? provider,
          @JsonKey(name: "password") final String? password,
          @JsonKey(name: "resetPasswordToken") final String? resetPasswordToken,
          @JsonKey(name: "confirmationToken") final dynamic confirmationToken,
          @JsonKey(name: "confirmed") final bool? confirmed,
          @JsonKey(name: "blocked") final bool? blocked,
          @JsonKey(name: "collection_card") final int? collectionCard,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt,
          @JsonKey(name: "scores") final int? scores}) =
      _$UpdateScoreResponseModelImpl;

  factory _UpdateScoreResponseModel.fromJson(Map<String, dynamic> json) =
      _$UpdateScoreResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "provider")
  String? get provider;
  @override
  @JsonKey(name: "password")
  String? get password;
  @override
  @JsonKey(name: "resetPasswordToken")
  String? get resetPasswordToken;
  @override
  @JsonKey(name: "confirmationToken")
  dynamic get confirmationToken;
  @override
  @JsonKey(name: "confirmed")
  bool? get confirmed;
  @override
  @JsonKey(name: "blocked")
  bool? get blocked;
  @override
  @JsonKey(name: "collection_card")
  int? get collectionCard;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "scores")
  int? get scores;
  @override
  @JsonKey(ignore: true)
  _$$UpdateScoreResponseModelImplCopyWith<_$UpdateScoreResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
