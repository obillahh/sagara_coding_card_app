// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_card_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckCardResponseModelImpl _$$CheckCardResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckCardResponseModelImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$CheckCardResponseModelImplToJson(
        _$CheckCardResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
