// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResetPasswordRequestModelImpl _$$ResetPasswordRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetPasswordRequestModelImpl(
      password: json['password'] as String?,
      passwordConfirmation: json['passwordConfirmation'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$ResetPasswordRequestModelImplToJson(
        _$ResetPasswordRequestModelImpl instance) =>
    <String, dynamic>{
      'password': instance.password,
      'passwordConfirmation': instance.passwordConfirmation,
      'code': instance.code,
    };
