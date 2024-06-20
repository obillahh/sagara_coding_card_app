// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_id_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserIdResponseModelImpl _$$UserIdResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserIdResponseModelImpl(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      email: json['email'] as String?,
      provider: json['provider'] as String?,
      confirmed: json['confirmed'] as bool?,
      blocked: json['blocked'] as bool?,
      collectionCard: (json['collection_card'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      scores: (json['scores'] as num?)?.toInt(),
      avatar: json['avatar'] == null
          ? null
          : UserIdAvatarResponseModel.fromJson(
              json['avatar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserIdResponseModelImplToJson(
        _$UserIdResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'provider': instance.provider,
      'confirmed': instance.confirmed,
      'blocked': instance.blocked,
      'collection_card': instance.collectionCard,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'scores': instance.scores,
      'avatar': instance.avatar,
    };

_$UserIdAvatarResponseModelImpl _$$UserIdAvatarResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserIdAvatarResponseModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      alternativeText: json['alternativeText'],
      caption: json['caption'],
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      formats: json['formats'] == null
          ? null
          : UserIdAvatarFormatsResponseModel.fromJson(
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
      isUrlSigned: json['isUrlSigned'] as bool?,
    );

Map<String, dynamic> _$$UserIdAvatarResponseModelImplToJson(
        _$UserIdAvatarResponseModelImpl instance) =>
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
      'isUrlSigned': instance.isUrlSigned,
    };

_$UserIdAvatarFormatsResponseModelImpl
    _$$UserIdAvatarFormatsResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$UserIdAvatarFormatsResponseModelImpl(
          small: json['small'] == null
              ? null
              : UserIdAvatarFormatsSizeResponseModel.fromJson(
                  json['small'] as Map<String, dynamic>),
          medium: json['medium'] == null
              ? null
              : UserIdAvatarFormatsSizeResponseModel.fromJson(
                  json['medium'] as Map<String, dynamic>),
          thumbnail: json['thumbnail'] == null
              ? null
              : UserIdAvatarFormatsSizeResponseModel.fromJson(
                  json['thumbnail'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UserIdAvatarFormatsResponseModelImplToJson(
        _$UserIdAvatarFormatsResponseModelImpl instance) =>
    <String, dynamic>{
      'small': instance.small,
      'medium': instance.medium,
      'thumbnail': instance.thumbnail,
    };

_$UserIdAvatarFormatsSizeResponseModelImpl
    _$$UserIdAvatarFormatsSizeResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$UserIdAvatarFormatsSizeResponseModelImpl(
          ext: json['ext'] as String?,
          url: json['url'] as String?,
          hash: json['hash'] as String?,
          mime: json['mime'] as String?,
          name: json['name'] as String?,
          path: json['path'],
          size: (json['size'] as num?)?.toDouble(),
          width: (json['width'] as num?)?.toInt(),
          height: (json['height'] as num?)?.toInt(),
          isUrlSigned: json['isUrlSigned'] as bool?,
        );

Map<String, dynamic> _$$UserIdAvatarFormatsSizeResponseModelImplToJson(
        _$UserIdAvatarFormatsSizeResponseModelImpl instance) =>
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
      'isUrlSigned': instance.isUrlSigned,
    };
