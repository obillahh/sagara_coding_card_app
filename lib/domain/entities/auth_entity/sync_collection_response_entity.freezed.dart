// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_collection_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SyncCollectionResponseEntity _$SyncCollectionResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _SyncCollectionResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$SyncCollectionResponseEntity {
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SyncCollectionResponseEntityCopyWith<SyncCollectionResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SyncCollectionResponseEntityCopyWith<$Res> {
  factory $SyncCollectionResponseEntityCopyWith(
          SyncCollectionResponseEntity value,
          $Res Function(SyncCollectionResponseEntity) then) =
      _$SyncCollectionResponseEntityCopyWithImpl<$Res,
          SyncCollectionResponseEntity>;
  @useResult
  $Res call({@JsonKey(name: "message") String message});
}

/// @nodoc
class _$SyncCollectionResponseEntityCopyWithImpl<$Res,
        $Val extends SyncCollectionResponseEntity>
    implements $SyncCollectionResponseEntityCopyWith<$Res> {
  _$SyncCollectionResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SyncCollectionResponseEntityImplCopyWith<$Res>
    implements $SyncCollectionResponseEntityCopyWith<$Res> {
  factory _$$SyncCollectionResponseEntityImplCopyWith(
          _$SyncCollectionResponseEntityImpl value,
          $Res Function(_$SyncCollectionResponseEntityImpl) then) =
      __$$SyncCollectionResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "message") String message});
}

/// @nodoc
class __$$SyncCollectionResponseEntityImplCopyWithImpl<$Res>
    extends _$SyncCollectionResponseEntityCopyWithImpl<$Res,
        _$SyncCollectionResponseEntityImpl>
    implements _$$SyncCollectionResponseEntityImplCopyWith<$Res> {
  __$$SyncCollectionResponseEntityImplCopyWithImpl(
      _$SyncCollectionResponseEntityImpl _value,
      $Res Function(_$SyncCollectionResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SyncCollectionResponseEntityImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SyncCollectionResponseEntityImpl
    implements _SyncCollectionResponseEntity {
  const _$SyncCollectionResponseEntityImpl(
      {@JsonKey(name: "message") required this.message});

  factory _$SyncCollectionResponseEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SyncCollectionResponseEntityImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String message;

  @override
  String toString() {
    return 'SyncCollectionResponseEntity(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncCollectionResponseEntityImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SyncCollectionResponseEntityImplCopyWith<
          _$SyncCollectionResponseEntityImpl>
      get copyWith => __$$SyncCollectionResponseEntityImplCopyWithImpl<
          _$SyncCollectionResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SyncCollectionResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _SyncCollectionResponseEntity
    implements SyncCollectionResponseEntity {
  const factory _SyncCollectionResponseEntity(
          {@JsonKey(name: "message") required final String message}) =
      _$SyncCollectionResponseEntityImpl;

  factory _SyncCollectionResponseEntity.fromJson(Map<String, dynamic> json) =
      _$SyncCollectionResponseEntityImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SyncCollectionResponseEntityImplCopyWith<
          _$SyncCollectionResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
