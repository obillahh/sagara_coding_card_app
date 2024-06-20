// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_collection_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SyncCollectionResponseModel _$SyncCollectionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _SyncCollectionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SyncCollectionResponseModel {
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SyncCollectionResponseModelCopyWith<SyncCollectionResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SyncCollectionResponseModelCopyWith<$Res> {
  factory $SyncCollectionResponseModelCopyWith(
          SyncCollectionResponseModel value,
          $Res Function(SyncCollectionResponseModel) then) =
      _$SyncCollectionResponseModelCopyWithImpl<$Res,
          SyncCollectionResponseModel>;
  @useResult
  $Res call({@JsonKey(name: "message") String? message});
}

/// @nodoc
class _$SyncCollectionResponseModelCopyWithImpl<$Res,
        $Val extends SyncCollectionResponseModel>
    implements $SyncCollectionResponseModelCopyWith<$Res> {
  _$SyncCollectionResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SyncCollectionResponseModelImplCopyWith<$Res>
    implements $SyncCollectionResponseModelCopyWith<$Res> {
  factory _$$SyncCollectionResponseModelImplCopyWith(
          _$SyncCollectionResponseModelImpl value,
          $Res Function(_$SyncCollectionResponseModelImpl) then) =
      __$$SyncCollectionResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "message") String? message});
}

/// @nodoc
class __$$SyncCollectionResponseModelImplCopyWithImpl<$Res>
    extends _$SyncCollectionResponseModelCopyWithImpl<$Res,
        _$SyncCollectionResponseModelImpl>
    implements _$$SyncCollectionResponseModelImplCopyWith<$Res> {
  __$$SyncCollectionResponseModelImplCopyWithImpl(
      _$SyncCollectionResponseModelImpl _value,
      $Res Function(_$SyncCollectionResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SyncCollectionResponseModelImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SyncCollectionResponseModelImpl
    implements _SyncCollectionResponseModel {
  const _$SyncCollectionResponseModelImpl(
      {@JsonKey(name: "message") this.message});

  factory _$SyncCollectionResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SyncCollectionResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String? message;

  @override
  String toString() {
    return 'SyncCollectionResponseModel(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncCollectionResponseModelImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SyncCollectionResponseModelImplCopyWith<_$SyncCollectionResponseModelImpl>
      get copyWith => __$$SyncCollectionResponseModelImplCopyWithImpl<
          _$SyncCollectionResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SyncCollectionResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SyncCollectionResponseModel
    implements SyncCollectionResponseModel {
  const factory _SyncCollectionResponseModel(
          {@JsonKey(name: "message") final String? message}) =
      _$SyncCollectionResponseModelImpl;

  factory _SyncCollectionResponseModel.fromJson(Map<String, dynamic> json) =
      _$SyncCollectionResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SyncCollectionResponseModelImplCopyWith<_$SyncCollectionResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
