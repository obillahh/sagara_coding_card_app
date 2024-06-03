// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_card_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckCardResponseModel _$CheckCardResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CheckCardResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CheckCardResponseModel {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckCardResponseModelCopyWith<CheckCardResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckCardResponseModelCopyWith<$Res> {
  factory $CheckCardResponseModelCopyWith(CheckCardResponseModel value,
          $Res Function(CheckCardResponseModel) then) =
      _$CheckCardResponseModelCopyWithImpl<$Res, CheckCardResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "message") String? message});
}

/// @nodoc
class _$CheckCardResponseModelCopyWithImpl<$Res,
        $Val extends CheckCardResponseModel>
    implements $CheckCardResponseModelCopyWith<$Res> {
  _$CheckCardResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckCardResponseModelImplCopyWith<$Res>
    implements $CheckCardResponseModelCopyWith<$Res> {
  factory _$$CheckCardResponseModelImplCopyWith(
          _$CheckCardResponseModelImpl value,
          $Res Function(_$CheckCardResponseModelImpl) then) =
      __$$CheckCardResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "message") String? message});
}

/// @nodoc
class __$$CheckCardResponseModelImplCopyWithImpl<$Res>
    extends _$CheckCardResponseModelCopyWithImpl<$Res,
        _$CheckCardResponseModelImpl>
    implements _$$CheckCardResponseModelImplCopyWith<$Res> {
  __$$CheckCardResponseModelImplCopyWithImpl(
      _$CheckCardResponseModelImpl _value,
      $Res Function(_$CheckCardResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CheckCardResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckCardResponseModelImpl implements _CheckCardResponseModel {
  const _$CheckCardResponseModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message});

  factory _$CheckCardResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckCardResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "message")
  final String? message;

  @override
  String toString() {
    return 'CheckCardResponseModel(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckCardResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckCardResponseModelImplCopyWith<_$CheckCardResponseModelImpl>
      get copyWith => __$$CheckCardResponseModelImplCopyWithImpl<
          _$CheckCardResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckCardResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CheckCardResponseModel implements CheckCardResponseModel {
  const factory _CheckCardResponseModel(
          {@JsonKey(name: "status") final int? status,
          @JsonKey(name: "message") final String? message}) =
      _$CheckCardResponseModelImpl;

  factory _CheckCardResponseModel.fromJson(Map<String, dynamic> json) =
      _$CheckCardResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CheckCardResponseModelImplCopyWith<_$CheckCardResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
