// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_card_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckCardResponseEntityImpl _$$CheckCardResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckCardResponseEntityImpl(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$CheckCardResponseEntityImplToJson(
        _$CheckCardResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
