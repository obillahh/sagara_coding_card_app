// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_confirmation_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmailConfirmationResponseEntity _$EmailConfirmationResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _EmailConfirmationResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$EmailConfirmationResponseEntity {
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "sent")
  bool get sent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailConfirmationResponseEntityCopyWith<EmailConfirmationResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailConfirmationResponseEntityCopyWith<$Res> {
  factory $EmailConfirmationResponseEntityCopyWith(
          EmailConfirmationResponseEntity value,
          $Res Function(EmailConfirmationResponseEntity) then) =
      _$EmailConfirmationResponseEntityCopyWithImpl<$Res,
          EmailConfirmationResponseEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "email") String email, @JsonKey(name: "sent") bool sent});
}

/// @nodoc
class _$EmailConfirmationResponseEntityCopyWithImpl<$Res,
        $Val extends EmailConfirmationResponseEntity>
    implements $EmailConfirmationResponseEntityCopyWith<$Res> {
  _$EmailConfirmationResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? sent = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      sent: null == sent
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailConfirmationResponseEntityImplCopyWith<$Res>
    implements $EmailConfirmationResponseEntityCopyWith<$Res> {
  factory _$$EmailConfirmationResponseEntityImplCopyWith(
          _$EmailConfirmationResponseEntityImpl value,
          $Res Function(_$EmailConfirmationResponseEntityImpl) then) =
      __$$EmailConfirmationResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "email") String email, @JsonKey(name: "sent") bool sent});
}

/// @nodoc
class __$$EmailConfirmationResponseEntityImplCopyWithImpl<$Res>
    extends _$EmailConfirmationResponseEntityCopyWithImpl<$Res,
        _$EmailConfirmationResponseEntityImpl>
    implements _$$EmailConfirmationResponseEntityImplCopyWith<$Res> {
  __$$EmailConfirmationResponseEntityImplCopyWithImpl(
      _$EmailConfirmationResponseEntityImpl _value,
      $Res Function(_$EmailConfirmationResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? sent = null,
  }) {
    return _then(_$EmailConfirmationResponseEntityImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      sent: null == sent
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmailConfirmationResponseEntityImpl
    implements _EmailConfirmationResponseEntity {
  const _$EmailConfirmationResponseEntityImpl(
      {@JsonKey(name: "email") required this.email,
      @JsonKey(name: "sent") required this.sent});

  factory _$EmailConfirmationResponseEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EmailConfirmationResponseEntityImplFromJson(json);

  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "sent")
  final bool sent;

  @override
  String toString() {
    return 'EmailConfirmationResponseEntity(email: $email, sent: $sent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailConfirmationResponseEntityImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.sent, sent) || other.sent == sent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, sent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailConfirmationResponseEntityImplCopyWith<
          _$EmailConfirmationResponseEntityImpl>
      get copyWith => __$$EmailConfirmationResponseEntityImplCopyWithImpl<
          _$EmailConfirmationResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmailConfirmationResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _EmailConfirmationResponseEntity
    implements EmailConfirmationResponseEntity {
  const factory _EmailConfirmationResponseEntity(
          {@JsonKey(name: "email") required final String email,
          @JsonKey(name: "sent") required final bool sent}) =
      _$EmailConfirmationResponseEntityImpl;

  factory _EmailConfirmationResponseEntity.fromJson(Map<String, dynamic> json) =
      _$EmailConfirmationResponseEntityImpl.fromJson;

  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "sent")
  bool get sent;
  @override
  @JsonKey(ignore: true)
  _$$EmailConfirmationResponseEntityImplCopyWith<
          _$EmailConfirmationResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
