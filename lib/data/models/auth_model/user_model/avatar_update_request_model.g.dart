// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_update_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvatarUpdateRequestModelImpl _$$AvatarUpdateRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AvatarUpdateRequestModelImpl(
      ref: json['ref'] as String,
      refId: (json['refId'] as num).toInt(),
      field: json['field'] as String,
      files: json['files'] as String,
    );

Map<String, dynamic> _$$AvatarUpdateRequestModelImplToJson(
        _$AvatarUpdateRequestModelImpl instance) =>
    <String, dynamic>{
      'ref': instance.ref,
      'refId': instance.refId,
      'field': instance.field,
      'files': instance.files,
    };
