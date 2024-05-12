// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_update_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvatarUpdateResponseModelImpl _$$AvatarUpdateResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AvatarUpdateResponseModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      alternativeText: json['alternativeText'],
      caption: json['caption'],
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      formats: json['formats'] == null
          ? null
          : FormatsAvatarUpdateResponseModel.fromJson(
              json['formats'] as Map<String, dynamic>),
      hash: json['hash'] as String?,
      ext: json['ext'] as String?,
      mime: json['mime'] as String?,
      size: (json['size'] as num?)?.toDouble(),
      url: json['url'] as String?,
      previewUrl: json['previewUrl'],
      provider: json['provider'] as String?,
      providerMetadata: json['provider_metadata'],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$AvatarUpdateResponseModelImplToJson(
        _$AvatarUpdateResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'alternativeText': instance.alternativeText,
      'caption': instance.caption,
      'width': instance.width,
      'height': instance.height,
      'formats': instance.formats,
      'hash': instance.hash,
      'ext': instance.ext,
      'mime': instance.mime,
      'size': instance.size,
      'url': instance.url,
      'previewUrl': instance.previewUrl,
      'provider': instance.provider,
      'provider_metadata': instance.providerMetadata,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$FormatsAvatarUpdateResponseModelImpl
    _$$FormatsAvatarUpdateResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$FormatsAvatarUpdateResponseModelImpl(
          small: json['small'] == null
              ? null
              : SizeFormatAvatarUpdateResponseModel.fromJson(
                  json['small'] as Map<String, dynamic>),
          medium: json['medium'] == null
              ? null
              : SizeFormatAvatarUpdateResponseModel.fromJson(
                  json['medium'] as Map<String, dynamic>),
          thumbnail: json['thumbnail'] == null
              ? null
              : SizeFormatAvatarUpdateResponseModel.fromJson(
                  json['thumbnail'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$FormatsAvatarUpdateResponseModelImplToJson(
        _$FormatsAvatarUpdateResponseModelImpl instance) =>
    <String, dynamic>{
      'small': instance.small,
      'medium': instance.medium,
      'thumbnail': instance.thumbnail,
    };

_$SizeFormatAvatarUpdateResponseModelImpl
    _$$SizeFormatAvatarUpdateResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$SizeFormatAvatarUpdateResponseModelImpl(
          ext: json['ext'] as String?,
          url: json['url'] as String?,
          hash: json['hash'] as String?,
          mime: json['mime'] as String?,
          name: json['name'] as String?,
          path: json['path'],
          size: (json['size'] as num?)?.toDouble(),
          width: (json['width'] as num?)?.toInt(),
          height: (json['height'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$SizeFormatAvatarUpdateResponseModelImplToJson(
        _$SizeFormatAvatarUpdateResponseModelImpl instance) =>
    <String, dynamic>{
      'ext': instance.ext,
      'url': instance.url,
      'hash': instance.hash,
      'mime': instance.mime,
      'name': instance.name,
      'path': instance.path,
      'size': instance.size,
      'width': instance.width,
      'height': instance.height,
    };
