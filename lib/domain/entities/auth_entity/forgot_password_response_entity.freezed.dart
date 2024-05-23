// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForgotPasswordResponseEntity _$ForgotPasswordResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _ForgotPasswordResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$ForgotPasswordResponseEntity {
  @JsonKey(name: "ok")
  bool get ok => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotPasswordResponseEntityCopyWith<ForgotPasswordResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordResponseEntityCopyWith<$Res> {
  factory $ForgotPasswordResponseEntityCopyWith(
          ForgotPasswordResponseEntity value,
          $Res Function(ForgotPasswordResponseEntity) then) =
      _$ForgotPasswordResponseEntityCopyWithImpl<$Res,
          ForgotPasswordResponseEntity>;
  @useResult
  $Res call({@JsonKey(name: "ok") bool ok});
}

/// @nodoc
class _$ForgotPasswordResponseEntityCopyWithImpl<$Res,
        $Val extends ForgotPasswordResponseEntity>
    implements $ForgotPasswordResponseEntityCopyWith<$Res> {
  _$ForgotPasswordResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ok = null,
  }) {
    return _then(_value.copyWith(
      ok: null == ok
          ? _value.ok
          : ok // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotPasswordResponseEntityImplCopyWith<$Res>
    implements $ForgotPasswordResponseEntityCopyWith<$Res> {
  factory _$$ForgotPasswordResponseEntityImplCopyWith(
          _$ForgotPasswordResponseEntityImpl value,
          $Res Function(_$ForgotPasswordResponseEntityImpl) then) =
      __$$ForgotPasswordResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "ok") bool ok});
}

/// @nodoc
class __$$ForgotPasswordResponseEntityImplCopyWithImpl<$Res>
    extends _$ForgotPasswordResponseEntityCopyWithImpl<$Res,
        _$ForgotPasswordResponseEntityImpl>
    implements _$$ForgotPasswordResponseEntityImplCopyWith<$Res> {
  __$$ForgotPasswordResponseEntityImplCopyWithImpl(
      _$ForgotPasswordResponseEntityImpl _value,
      $Res Function(_$ForgotPasswordResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ok = null,
  }) {
    return _then(_$ForgotPasswordResponseEntityImpl(
      ok: null == ok
          ? _value.ok
          : ok // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgotPasswordResponseEntityImpl
    implements _ForgotPasswordResponseEntity {
  const _$ForgotPasswordResponseEntityImpl(
      {@JsonKey(name: "ok") required this.ok});

  factory _$ForgotPasswordResponseEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ForgotPasswordResponseEntityImplFromJson(json);

  @override
  @JsonKey(name: "ok")
  final bool ok;

  @override
  String toString() {
    return 'ForgotPasswordResponseEntity(ok: $ok)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordResponseEntityImpl &&
            (identical(other.ok, ok) || other.ok == ok));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ok);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordResponseEntityImplCopyWith<
          _$ForgotPasswordResponseEntityImpl>
      get copyWith => __$$ForgotPasswordResponseEntityImplCopyWithImpl<
          _$ForgotPasswordResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgotPasswordResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _ForgotPasswordResponseEntity
    implements ForgotPasswordResponseEntity {
  const factory _ForgotPasswordResponseEntity(
          {@JsonKey(name: "ok") required final bool ok}) =
      _$ForgotPasswordResponseEntityImpl;

  factory _ForgotPasswordResponseEntity.fromJson(Map<String, dynamic> json) =
      _$ForgotPasswordResponseEntityImpl.fromJson;

  @override
  @JsonKey(name: "ok")
  bool get ok;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPasswordResponseEntityImplCopyWith<
          _$ForgotPasswordResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
