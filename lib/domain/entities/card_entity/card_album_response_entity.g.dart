// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_album_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardAlbumResponseEntityImpl _$$CardAlbumResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CardAlbumResponseEntityImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      role: json['role'] as String,
      description: json['description'] as String,
      level: json['level'] as String,
      avatarCard: DataAvatarCardEntity.fromJson(
          json['avatar_card'] as Map<String, dynamic>),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$CardAlbumResponseEntityImplToJson(
        _$CardAlbumResponseEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'role': instance.role,
      'description': instance.description,
      'level': instance.level,
      'avatar_card': instance.avatarCard,
      'status': instance.status,
    };

_$DataAvatarCardEntityImpl _$$DataAvatarCardEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$DataAvatarCardEntityImpl(
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
      folderPath: json['folderPath'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      isUrlSigned: json['isUrlSigned'] as bool,
    );

Map<String, dynamic> _$$DataAvatarCardEntityImplToJson(
        _$DataAvatarCardEntityImpl instance) =>
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
      'folderPath': instance.folderPath,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'isUrlSigned': instance.isUrlSigned,
    };
