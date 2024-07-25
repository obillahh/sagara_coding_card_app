// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_confirmation_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmailConfirmationResponseModel _$EmailConfirmationResponseModelFromJson(
    Map<String, dynamic> json) {
  return _EmailConfirmationResponseModel.fromJson(json);
}

/// @nodoc
mixin _$EmailConfirmationResponseModel {
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "sent")
  bool? get sent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailConfirmationResponseModelCopyWith<EmailConfirmationResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailConfirmationResponseModelCopyWith<$Res> {
  factory $EmailConfirmationResponseModelCopyWith(
          EmailConfirmationResponseModel value,
          $Res Function(EmailConfirmationResponseModel) then) =
      _$EmailConfirmationResponseModelCopyWithImpl<$Res,
          EmailConfirmationResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "email") String? email,
      @JsonKey(name: "sent") bool? sent});
}

/// @nodoc
class _$EmailConfirmationResponseModelCopyWithImpl<$Res,
        $Val extends EmailConfirmationResponseModel>
    implements $EmailConfirmationResponseModelCopyWith<$Res> {
  _$EmailConfirmationResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? sent = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      sent: freezed == sent
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailConfirmationResponseModelImplCopyWith<$Res>
    implements $EmailConfirmationResponseModelCopyWith<$Res> {
  factory _$$EmailConfirmationResponseModelImplCopyWith(
          _$EmailConfirmationResponseModelImpl value,
          $Res Function(_$EmailConfirmationResponseModelImpl) then) =
      __$$EmailConfirmationResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "email") String? email,
      @JsonKey(name: "sent") bool? sent});
}

/// @nodoc
class __$$EmailConfirmationResponseModelImplCopyWithImpl<$Res>
    extends _$EmailConfirmationResponseModelCopyWithImpl<$Res,
        _$EmailConfirmationResponseModelImpl>
    implements _$$EmailConfirmationResponseModelImplCopyWith<$Res> {
  __$$EmailConfirmationResponseModelImplCopyWithImpl(
      _$EmailConfirmationResponseModelImpl _value,
      $Res Function(_$EmailConfirmationResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? sent = freezed,
  }) {
    return _then(_$EmailConfirmationResponseModelImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      sent: freezed == sent
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmailConfirmationResponseModelImpl
    implements _EmailConfirmationResponseModel {
  const _$EmailConfirmationResponseModelImpl(
      {@JsonKey(name: "email") this.email, @JsonKey(name: "sent") this.sent});

  factory _$EmailConfirmationResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EmailConfirmationResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "sent")
  final bool? sent;

  @override
  String toString() {
    return 'EmailConfirmationResponseModel(email: $email, sent: $sent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailConfirmationResponseModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.sent, sent) || other.sent == sent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, sent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailConfirmationResponseModelImplCopyWith<
          _$EmailConfirmationResponseModelImpl>
      get copyWith => __$$EmailConfirmationResponseModelImplCopyWithImpl<
          _$EmailConfirmationResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmailConfirmationResponseModelImplToJson(
      this,
    );
  }
}

abstract class _EmailConfirmationResponseModel
    implements EmailConfirmationResponseModel {
  const factory _EmailConfirmationResponseModel(
          {@JsonKey(name: "email") final String? email,
          @JsonKey(name: "sent") final bool? sent}) =
      _$EmailConfirmationResponseModelImpl;

  factory _EmailConfirmationResponseModel.fromJson(Map<String, dynamic> json) =
      _$EmailConfirmationResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "sent")
  bool? get sent;
  @override
  @JsonKey(ignore: true)
  _$$EmailConfirmationResponseModelImplCopyWith<
          _$EmailConfirmationResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
