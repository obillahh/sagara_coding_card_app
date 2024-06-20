// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_id_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserIdResponseEntityImpl _$$UserIdResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$UserIdResponseEntityImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      email: json['email'] as String,
      collectionCard: (json['collection_card'] as num).toInt(),
      scores: (json['scores'] as num).toInt(),
      avatar: UserIdAvatarResponseEntity.fromJson(
          json['avatar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserIdResponseEntityImplToJson(
        _$UserIdResponseEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'collection_card': instance.collectionCard,
      'scores': instance.scores,
      'avatar': instance.avatar,
    };

_$UserIdAvatarResponseEntityImpl _$$UserIdAvatarResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$UserIdAvatarResponseEntityImpl(
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
      isUrlSigned: json['isUrlSigned'] as bool,
    );

Map<String, dynamic> _$$UserIdAvatarResponseEntityImplToJson(
        _$UserIdAvatarResponseEntityImpl instance) =>
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
      'isUrlSigned': instance.isUrlSigned,
    };
