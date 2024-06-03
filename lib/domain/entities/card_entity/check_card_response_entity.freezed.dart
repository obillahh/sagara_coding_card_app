// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_card_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckCardResponseEntity _$CheckCardResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _CheckCardResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$CheckCardResponseEntity {
  @JsonKey(name: "status")
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckCardResponseEntityCopyWith<CheckCardResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckCardResponseEntityCopyWith<$Res> {
  factory $CheckCardResponseEntityCopyWith(CheckCardResponseEntity value,
          $Res Function(CheckCardResponseEntity) then) =
      _$CheckCardResponseEntityCopyWithImpl<$Res, CheckCardResponseEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int status,
      @JsonKey(name: "message") String message});
}

/// @nodoc
class _$CheckCardResponseEntityCopyWithImpl<$Res,
        $Val extends CheckCardResponseEntity>
    implements $CheckCardResponseEntityCopyWith<$Res> {
  _$CheckCardResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckCardResponseEntityImplCopyWith<$Res>
    implements $CheckCardResponseEntityCopyWith<$Res> {
  factory _$$CheckCardResponseEntityImplCopyWith(
          _$CheckCardResponseEntityImpl value,
          $Res Function(_$CheckCardResponseEntityImpl) then) =
      __$$CheckCardResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int status,
      @JsonKey(name: "message") String message});
}

/// @nodoc
class __$$CheckCardResponseEntityImplCopyWithImpl<$Res>
    extends _$CheckCardResponseEntityCopyWithImpl<$Res,
        _$CheckCardResponseEntityImpl>
    implements _$$CheckCardResponseEntityImplCopyWith<$Res> {
  __$$CheckCardResponseEntityImplCopyWithImpl(
      _$CheckCardResponseEntityImpl _value,
      $Res Function(_$CheckCardResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$CheckCardResponseEntityImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckCardResponseEntityImpl implements _CheckCardResponseEntity {
  const _$CheckCardResponseEntityImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "message") required this.message});

  factory _$CheckCardResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckCardResponseEntityImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int status;
  @override
  @JsonKey(name: "message")
  final String message;

  @override
  String toString() {
    return 'CheckCardResponseEntity(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckCardResponseEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckCardResponseEntityImplCopyWith<_$CheckCardResponseEntityImpl>
      get copyWith => __$$CheckCardResponseEntityImplCopyWithImpl<
          _$CheckCardResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckCardResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _CheckCardResponseEntity implements CheckCardResponseEntity {
  const factory _CheckCardResponseEntity(
          {@JsonKey(name: "status") required final int status,
          @JsonKey(name: "message") required final String message}) =
      _$CheckCardResponseEntityImpl;

  factory _CheckCardResponseEntity.fromJson(Map<String, dynamic> json) =
      _$CheckCardResponseEntityImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int get status;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CheckCardResponseEntityImplCopyWith<_$CheckCardResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
