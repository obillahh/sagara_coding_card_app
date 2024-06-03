// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_card_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckCardRequestModel _$CheckCardRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CheckCardRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CheckCardRequestModel {
  @JsonKey(name: "user_id")
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckCardRequestModelCopyWith<CheckCardRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckCardRequestModelCopyWith<$Res> {
  factory $CheckCardRequestModelCopyWith(CheckCardRequestModel value,
          $Res Function(CheckCardRequestModel) then) =
      _$CheckCardRequestModelCopyWithImpl<$Res, CheckCardRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "user_id") int userId});
}

/// @nodoc
class _$CheckCardRequestModelCopyWithImpl<$Res,
        $Val extends CheckCardRequestModel>
    implements $CheckCardRequestModelCopyWith<$Res> {
  _$CheckCardRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckCardRequestModelImplCopyWith<$Res>
    implements $CheckCardRequestModelCopyWith<$Res> {
  factory _$$CheckCardRequestModelImplCopyWith(
          _$CheckCardRequestModelImpl value,
          $Res Function(_$CheckCardRequestModelImpl) then) =
      __$$CheckCardRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "user_id") int userId});
}

/// @nodoc
class __$$CheckCardRequestModelImplCopyWithImpl<$Res>
    extends _$CheckCardRequestModelCopyWithImpl<$Res,
        _$CheckCardRequestModelImpl>
    implements _$$CheckCardRequestModelImplCopyWith<$Res> {
  __$$CheckCardRequestModelImplCopyWithImpl(_$CheckCardRequestModelImpl _value,
      $Res Function(_$CheckCardRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$CheckCardRequestModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckCardRequestModelImpl implements _CheckCardRequestModel {
  const _$CheckCardRequestModelImpl(
      {@JsonKey(name: "user_id") required this.userId});

  factory _$CheckCardRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckCardRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "user_id")
  final int userId;

  @override
  String toString() {
    return 'CheckCardRequestModel(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckCardRequestModelImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckCardRequestModelImplCopyWith<_$CheckCardRequestModelImpl>
      get copyWith => __$$CheckCardRequestModelImplCopyWithImpl<
          _$CheckCardRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckCardRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CheckCardRequestModel implements CheckCardRequestModel {
  const factory _CheckCardRequestModel(
          {@JsonKey(name: "user_id") required final int userId}) =
      _$CheckCardRequestModelImpl;

  factory _CheckCardRequestModel.fromJson(Map<String, dynamic> json) =
      _$CheckCardRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "user_id")
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$CheckCardRequestModelImplCopyWith<_$CheckCardRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
