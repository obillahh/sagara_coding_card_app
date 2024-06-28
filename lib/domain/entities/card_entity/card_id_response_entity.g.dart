// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_id_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardIdResponseEntityImpl _$$CardIdResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CardIdResponseEntityImpl(
      data: CardIdDataEntity.fromJson(json['data'] as Map<String, dynamic>),
      meta: CardIdMetaEntity.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CardIdResponseEntityImplToJson(
        _$CardIdResponseEntityImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };

_$CardIdDataEntityImpl _$$CardIdDataEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CardIdDataEntityImpl(
      id: (json['id'] as num).toInt(),
      attributes: CardIdDataAttributesEntity.fromJson(
          json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CardIdDataEntityImplToJson(
        _$CardIdDataEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

_$CardIdDataAttributesEntityImpl _$$CardIdDataAttributesEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CardIdDataAttributesEntityImpl(
      name: json['name'] as String,
      role: json['role'] as String,
      description: json['description'] as String,
      level: json['level'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      avatarCard: CardIdDataAttributesAvatarCardEntity.fromJson(
          json['avatar_card'] as Map<String, dynamic>),
      quizzes: CardIdDataAttributesQuizzesEntity.fromJson(
          json['quizzes'] as Map<String, dynamic>),
      users: CardIdDataAttributesUsersEntity.fromJson(
          json['users'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CardIdDataAttributesEntityImplToJson(
        _$CardIdDataAttributesEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'role': instance.role,
      'description': instance.description,
      'level': instance.level,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'publishedAt': instance.publishedAt.toIso8601String(),
      'avatar_card': instance.avatarCard,
      'quizzes': instance.quizzes,
      'users': instance.users,
    };

_$CardIdDataAttributesAvatarCardEntityImpl
    _$$CardIdDataAttributesAvatarCardEntityImplFromJson(
            Map<String, dynamic> json) =>
        _$CardIdDataAttributesAvatarCardEntityImpl(
          data: CardIdDataAttributesAvatarCardDataEntity.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CardIdDataAttributesAvatarCardEntityImplToJson(
        _$CardIdDataAttributesAvatarCardEntityImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$CardIdDataAttributesAvatarCardDataEntityImpl
    _$$CardIdDataAttributesAvatarCardDataEntityImplFromJson(
            Map<String, dynamic> json) =>
        _$CardIdDataAttributesAvatarCardDataEntityImpl(
          id: (json['id'] as num).toInt(),
          attributes:
              CardIdDataAttributesAvatarCardDataAttributesEntity.fromJson(
                  json['attributes'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CardIdDataAttributesAvatarCardDataEntityImplToJson(
        _$CardIdDataAttributesAvatarCardDataEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

_$CardIdDataAttributesAvatarCardDataAttributesEntityImpl
    _$$CardIdDataAttributesAvatarCardDataAttributesEntityImplFromJson(
            Map<String, dynamic> json) =>
        _$CardIdDataAttributesAvatarCardDataAttributesEntityImpl(
          name: json['name'] as String,
          alternativeText: json['alternativeText'],
          caption: json['caption'],
          width: (json['width'] as num).toInt(),
          height: (json['height'] as num).toInt(),
          formats: CardIdDataAttributesAvatarCardDataAttributesFormatsEntity
              .fromJson(json['formats'] as Map<String, dynamic>),
          hash: json['hash'] as String,
          ext: json['ext'] as String,
          mime: json['mime'] as String,
          size: (json['size'] as num).toDouble(),
          url: json['url'] as String,
          previewUrl: json['previewUrl'],
          provider: json['provider'] as String,
          providerMetadata: json['provider_metadata'],
          createdAt: DateTime.parse(json['createdAt'] as String),
          updatedAt: DateTime.parse(json['updatedAt'] as String),
          isUrlSigned: json['isUrlSigned'] as bool,
        );

Map<String,
    dynamic> _$$CardIdDataAttributesAvatarCardDataAttributesEntityImplToJson(
        _$CardIdDataAttributesAvatarCardDataAttributesEntityImpl instance) =>
    <String, dynamic>{
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
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'isUrlSigned': instance.isUrlSigned,
    };

_$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImpl
    _$$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImplFromJson(
            Map<String, dynamic> json) =>
        _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImpl(
          small: CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity
              .fromJson(json['small'] as Map<String, dynamic>),
          thumbnail:
              CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity
                  .fromJson(json['thumbnail'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImplToJson(
            _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImpl
                instance) =>
        <String, dynamic>{
          'small': instance.small,
          'thumbnail': instance.thumbnail,
        };

_$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImpl
    _$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImplFromJson(
            Map<String, dynamic> json) =>
        _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImpl(
          ext: json['ext'] as String,
          url: json['url'] as String,
          hash: json['hash'] as String,
          mime: json['mime'] as String,
          name: json['name'] as String,
          path: json['path'],
          size: (json['size'] as num).toDouble(),
          width: (json['width'] as num).toInt(),
          height: (json['height'] as num).toInt(),
          isUrlSigned: json['isUrlSigned'] as bool,
        );

Map<String, dynamic>
    _$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImplToJson(
            _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImpl
                instance) =>
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

_$CardIdDataAttributesQuizzesEntityImpl
    _$$CardIdDataAttributesQuizzesEntityImplFromJson(
            Map<String, dynamic> json) =>
        _$CardIdDataAttributesQuizzesEntityImpl(
          data: (json['data'] as List<dynamic>)
              .map((e) => CardIdDataAttributesQuizzesDataEntity.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$CardIdDataAttributesQuizzesEntityImplToJson(
        _$CardIdDataAttributesQuizzesEntityImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$CardIdDataAttributesQuizzesDataEntityImpl
    _$$CardIdDataAttributesQuizzesDataEntityImplFromJson(
            Map<String, dynamic> json) =>
        _$CardIdDataAttributesQuizzesDataEntityImpl(
          id: (json['id'] as num).toInt(),
          attributes: CardIdDataAttributesQuizzesDataAttributesEntity.fromJson(
              json['attributes'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CardIdDataAttributesQuizzesDataEntityImplToJson(
        _$CardIdDataAttributesQuizzesDataEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

_$CardIdDataAttributesQuizzesDataAttributesEntityImpl
    _$$CardIdDataAttributesQuizzesDataAttributesEntityImplFromJson(
            Map<String, dynamic> json) =>
        _$CardIdDataAttributesQuizzesDataAttributesEntityImpl(
          quizQuestion: json['quiz_question'] as String,
          optionOne: json['option_one'] as String,
          optionTwo: json['option_two'] as String,
          optionThree: json['option_three'] as String,
          optionFour: json['option_four'] as String,
          correctOption: json['correct_option'] as String,
          createdAt: DateTime.parse(json['createdAt'] as String),
          updatedAt: DateTime.parse(json['updatedAt'] as String),
          publishedAt: DateTime.parse(json['publishedAt'] as String),
          score: (json['score'] as num).toInt(),
        );

Map<String, dynamic>
    _$$CardIdDataAttributesQuizzesDataAttributesEntityImplToJson(
            _$CardIdDataAttributesQuizzesDataAttributesEntityImpl instance) =>
        <String, dynamic>{
          'quiz_question': instance.quizQuestion,
          'option_one': instance.optionOne,
          'option_two': instance.optionTwo,
          'option_three': instance.optionThree,
          'option_four': instance.optionFour,
          'correct_option': instance.correctOption,
          'createdAt': instance.createdAt.toIso8601String(),
          'updatedAt': instance.updatedAt.toIso8601String(),
          'publishedAt': instance.publishedAt.toIso8601String(),
          'score': instance.score,
        };

_$CardIdDataAttributesUsersEntityImpl
    _$$CardIdDataAttributesUsersEntityImplFromJson(Map<String, dynamic> json) =>
        _$CardIdDataAttributesUsersEntityImpl(
          data: (json['data'] as List<dynamic>)
              .map((e) => CardIdDataAttributesUsersDataEntity.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$CardIdDataAttributesUsersEntityImplToJson(
        _$CardIdDataAttributesUsersEntityImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$CardIdDataAttributesUsersDataEntityImpl
    _$$CardIdDataAttributesUsersDataEntityImplFromJson(
            Map<String, dynamic> json) =>
        _$CardIdDataAttributesUsersDataEntityImpl(
          id: (json['id'] as num).toInt(),
          attributes: CardIdDataAttributesUsersDataAttributesEntity.fromJson(
              json['attributes'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CardIdDataAttributesUsersDataEntityImplToJson(
        _$CardIdDataAttributesUsersDataEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

_$CardIdDataAttributesUsersDataAttributesEntityImpl
    _$$CardIdDataAttributesUsersDataAttributesEntityImplFromJson(
            Map<String, dynamic> json) =>
        _$CardIdDataAttributesUsersDataAttributesEntityImpl(
          username: json['username'] as String,
          email: json['email'] as String,
          provider: json['provider'] as String,
          confirmed: json['confirmed'] as bool,
          blocked: json['blocked'] as bool,
          collectionCard: (json['collection_card'] as num).toInt(),
          createdAt: DateTime.parse(json['createdAt'] as String),
          updatedAt: DateTime.parse(json['updatedAt'] as String),
          scores: (json['scores'] as num).toInt(),
        );

Map<String, dynamic> _$$CardIdDataAttributesUsersDataAttributesEntityImplToJson(
        _$CardIdDataAttributesUsersDataAttributesEntityImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'provider': instance.provider,
      'confirmed': instance.confirmed,
      'blocked': instance.blocked,
      'collection_card': instance.collectionCard,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'scores': instance.scores,
    };

_$CardIdMetaEntityImpl _$$CardIdMetaEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CardIdMetaEntityImpl();

Map<String, dynamic> _$$CardIdMetaEntityImplToJson(
        _$CardIdMetaEntityImpl instance) =>
    <String, dynamic>{};
