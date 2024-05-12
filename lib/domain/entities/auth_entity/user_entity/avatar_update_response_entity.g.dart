// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_update_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvatarUpdateResponseEntityImpl _$$AvatarUpdateResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AvatarUpdateResponseEntityImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      alternativeText: json['alternativeText'],
      caption: json['caption'],
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      hash: json['hash'] as String,
      ext: json['ext'] as String,
      mime: json['mime'] as String,
      size: (json['size'] as num).toDouble(),
      url: json['url'] as String,
      previewUrl: json['previewUrl'],
      provider: json['provider'] as String,
      providerMetadata: json['provider_metadata'],
    );

Map<String, dynamic> _$$AvatarUpdateResponseEntityImplToJson(
        _$AvatarUpdateResponseEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'alternativeText': instance.alternativeText,
      'caption': instance.caption,
      'width': instance.width,
      'height': instance.height,
      'hash': instance.hash,
      'ext': instance.ext,
      'mime': instance.mime,
      'size': instance.size,
      'url': instance.url,
      'previewUrl': instance.previewUrl,
      'provider': instance.provider,
      'provider_metadata': instance.providerMetadata,
    };
