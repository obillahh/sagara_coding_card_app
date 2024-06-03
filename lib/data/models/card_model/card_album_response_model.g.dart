// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_album_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardAlbumResponseModelImpl _$$CardAlbumResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CardAlbumResponseModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      role: json['role'] as String?,
      description: json['description'] as String?,
      level: json['level'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      publishedAt: json['publishedAt'] == null
          ? null
          : DateTime.parse(json['publishedAt'] as String),
      users: (json['users'] as List<dynamic>?)
          ?.map(
              (e) => UserDataResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      avatarCard: json['avatar_card'] == null
          ? null
          : DataAvatarCardModel.fromJson(
              json['avatar_card'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$CardAlbumResponseModelImplToJson(
        _$CardAlbumResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'role': instance.role,
      'description': instance.description,
      'level': instance.level,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'publishedAt': instance.publishedAt?.toIso8601String(),
      'users': instance.users,
      'avatar_card': instance.avatarCard,
      'status': instance.status,
    };

_$DataAvatarCardModelImpl _$$DataAvatarCardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DataAvatarCardModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      alternativeText: json['alternativeText'],
      caption: json['caption'],
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      formats: json['formats'] == null
          ? null
          : DataFormatsAvatarCardModel.fromJson(
              json['formats'] as Map<String, dynamic>),
      hash: json['hash'] as String?,
      ext: json['ext'] as String?,
      mime: json['mime'] as String?,
      size: (json['size'] as num?)?.toDouble(),
      url: json['url'] as String?,
      previewUrl: json['previewUrl'],
      provider: json['provider'] as String?,
      providerMetadata: json['provider_metadata'],
      folderPath: json['folderPath'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      isUrlSigned: json['isUrlSigned'] as bool?,
    );

Map<String, dynamic> _$$DataAvatarCardModelImplToJson(
        _$DataAvatarCardModelImpl instance) =>
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
      'folderPath': instance.folderPath,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'isUrlSigned': instance.isUrlSigned,
    };

_$DataFormatsAvatarCardModelImpl _$$DataFormatsAvatarCardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DataFormatsAvatarCardModelImpl(
      small: json['small'] == null
          ? null
          : DataSizeFormatsAvatarCardModel.fromJson(
              json['small'] as Map<String, dynamic>),
      thumbnail: json['thumbnail'] == null
          ? null
          : DataSizeFormatsAvatarCardModel.fromJson(
              json['thumbnail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataFormatsAvatarCardModelImplToJson(
        _$DataFormatsAvatarCardModelImpl instance) =>
    <String, dynamic>{
      'small': instance.small,
      'thumbnail': instance.thumbnail,
    };

_$DataSizeFormatsAvatarCardModelImpl
    _$$DataSizeFormatsAvatarCardModelImplFromJson(Map<String, dynamic> json) =>
        _$DataSizeFormatsAvatarCardModelImpl(
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

Map<String, dynamic> _$$DataSizeFormatsAvatarCardModelImplToJson(
        _$DataSizeFormatsAvatarCardModelImpl instance) =>
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
