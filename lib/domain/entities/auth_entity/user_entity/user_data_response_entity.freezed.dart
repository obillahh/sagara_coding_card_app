// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDataResponseEntity _$UserDataResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _UserDataResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$UserDataResponseEntity {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "collection_card")
  int get collectionCard => throw _privateConstructorUsedError;
  @JsonKey(name: "scores")
  int get scores => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataResponseEntityCopyWith<UserDataResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataResponseEntityCopyWith<$Res> {
  factory $UserDataResponseEntityCopyWith(UserDataResponseEntity value,
          $Res Function(UserDataResponseEntity) then) =
      _$UserDataResponseEntityCopyWithImpl<$Res, UserDataResponseEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "collection_card") int collectionCard,
      @JsonKey(name: "scores") int scores});
}

/// @nodoc
class _$UserDataResponseEntityCopyWithImpl<$Res,
        $Val extends UserDataResponseEntity>
    implements $UserDataResponseEntityCopyWith<$Res> {
  _$UserDataResponseEntityCopyWithImpl(this._value, this._then);

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
    Object? collectionCard = null,
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
      collectionCard: null == collectionCard
          ? _value.collectionCard
          : collectionCard // ignore: cast_nullable_to_non_nullable
              as int,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDataResponseEntityImplCopyWith<$Res>
    implements $UserDataResponseEntityCopyWith<$Res> {
  factory _$$UserDataResponseEntityImplCopyWith(
          _$UserDataResponseEntityImpl value,
          $Res Function(_$UserDataResponseEntityImpl) then) =
      __$$UserDataResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "collection_card") int collectionCard,
      @JsonKey(name: "scores") int scores});
}

/// @nodoc
class __$$UserDataResponseEntityImplCopyWithImpl<$Res>
    extends _$UserDataResponseEntityCopyWithImpl<$Res,
        _$UserDataResponseEntityImpl>
    implements _$$UserDataResponseEntityImplCopyWith<$Res> {
  __$$UserDataResponseEntityImplCopyWithImpl(
      _$UserDataResponseEntityImpl _value,
      $Res Function(_$UserDataResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? collectionCard = null,
    Object? scores = null,
  }) {
    return _then(_$UserDataResponseEntityImpl(
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
      collectionCard: null == collectionCard
          ? _value.collectionCard
          : collectionCard // ignore: cast_nullable_to_non_nullable
              as int,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataResponseEntityImpl implements _UserDataResponseEntity {
  const _$UserDataResponseEntityImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "username") required this.username,
      @JsonKey(name: "email") required this.email,
      @JsonKey(name: "collection_card") required this.collectionCard,
      @JsonKey(name: "scores") required this.scores});

  factory _$UserDataResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataResponseEntityImplFromJson(json);

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
  @JsonKey(name: "collection_card")
  final int collectionCard;
  @override
  @JsonKey(name: "scores")
  final int scores;

  @override
  String toString() {
    return 'UserDataResponseEntity(id: $id, username: $username, email: $email, collectionCard: $collectionCard, scores: $scores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataResponseEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.collectionCard, collectionCard) ||
                other.collectionCard == collectionCard) &&
            (identical(other.scores, scores) || other.scores == scores));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, username, email, collectionCard, scores);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataResponseEntityImplCopyWith<_$UserDataResponseEntityImpl>
      get copyWith => __$$UserDataResponseEntityImplCopyWithImpl<
          _$UserDataResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _UserDataResponseEntity implements UserDataResponseEntity {
  const factory _UserDataResponseEntity(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "username") required final String username,
          @JsonKey(name: "email") required final String email,
          @JsonKey(name: "collection_card") required final int collectionCard,
          @JsonKey(name: "scores") required final int scores}) =
      _$UserDataResponseEntityImpl;

  factory _UserDataResponseEntity.fromJson(Map<String, dynamic> json) =
      _$UserDataResponseEntityImpl.fromJson;

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
  @JsonKey(name: "collection_card")
  int get collectionCard;
  @override
  @JsonKey(name: "scores")
  int get scores;
  @override
  @JsonKey(ignore: true)
  _$$UserDataResponseEntityImplCopyWith<_$UserDataResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
