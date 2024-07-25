// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_confirmation_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmailConfirmationResponseEntityImpl
    _$$EmailConfirmationResponseEntityImplFromJson(Map<String, dynamic> json) =>
        _$EmailConfirmationResponseEntityImpl(
          email: json['email'] as String,
          sent: json['sent'] as bool,
        );

Map<String, dynamic> _$$EmailConfirmationResponseEntityImplToJson(
        _$EmailConfirmationResponseEntityImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'sent': instance.sent,
    };
