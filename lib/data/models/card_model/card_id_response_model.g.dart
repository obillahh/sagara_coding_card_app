// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_id_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardIdResponseModelImpl _$$CardIdResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CardIdResponseModelImpl(
      data: json['data'] == null
          ? null
          : CardIdDataModel.fromJson(json['data'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : CardIdMetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CardIdResponseModelImplToJson(
        _$CardIdResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };

_$CardIdDataModelImpl _$$CardIdDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CardIdDataModelImpl(
      id: (json['id'] as num?)?.toInt(),
      attributes: json['attributes'] == null
          ? null
          : CardIdDataAttributesModel.fromJson(
              json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CardIdDataModelImplToJson(
        _$CardIdDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

_$CardIdDataAttributesModelImpl _$$CardIdDataAttributesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CardIdDataAttributesModelImpl(
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
      avatarCard: json['avatar_card'] == null
          ? null
          : CardIdDataAttributesAvatarCardModel.fromJson(
              json['avatar_card'] as Map<String, dynamic>),
      quizzes: json['quizzes'] == null
          ? null
          : CardIdDataAttributesQuizzesModel.fromJson(
              json['quizzes'] as Map<String, dynamic>),
      users: json['users'] == null
          ? null
          : CardIdDataAttributesUsersModel.fromJson(
              json['users'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CardIdDataAttributesModelImplToJson(
        _$CardIdDataAttributesModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'role': instance.role,
      'description': instance.description,
      'level': instance.level,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'publishedAt': instance.publishedAt?.toIso8601String(),
      'avatar_card': instance.avatarCard,
      'quizzes': instance.quizzes,
      'users': instance.users,
    };

_$CardIdDataAttributesAvatarCardModelImpl
    _$$CardIdDataAttributesAvatarCardModelImplFromJson(
            Map<String, dynamic> json) =>
        _$CardIdDataAttributesAvatarCardModelImpl(
          data: json['data'] == null
              ? null
              : CardIdDataAttributesAvatarCardDataModel.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CardIdDataAttributesAvatarCardModelImplToJson(
        _$CardIdDataAttributesAvatarCardModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$CardIdDataAttributesAvatarCardDataModelImpl
    _$$CardIdDataAttributesAvatarCardDataModelImplFromJson(
            Map<String, dynamic> json) =>
        _$CardIdDataAttributesAvatarCardDataModelImpl(
          id: (json['id'] as num?)?.toInt(),
          attributes: json['attributes'] == null
              ? null
              : CardIdDataAttributesAvatarCardDataAttributesModel.fromJson(
                  json['attributes'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CardIdDataAttributesAvatarCardDataModelImplToJson(
        _$CardIdDataAttributesAvatarCardDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

_$CardIdDataAttributesAvatarCardDataAttributesModelImpl
    _$$CardIdDataAttributesAvatarCardDataAttributesModelImplFromJson(
            Map<String, dynamic> json) =>
        _$CardIdDataAttributesAvatarCardDataAttributesModelImpl(
          name: json['name'] as String?,
          alternativeText: json['alternativeText'],
          caption: json['caption'],
          width: (json['width'] as num?)?.toInt(),
          height: (json['height'] as num?)?.toInt(),
          formats: json['formats'] == null
              ? null
              : CardIdDataAttributesAvatarCardDataAttributesFormatsModel
                  .fromJson(json['formats'] as Map<String, dynamic>),
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

Map<String, dynamic>
    _$$CardIdDataAttributesAvatarCardDataAttributesModelImplToJson(
            _$CardIdDataAttributesAvatarCardDataAttributesModelImpl instance) =>
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
          'createdAt': instance.createdAt?.toIso8601String(),
          'updatedAt': instance.updatedAt?.toIso8601String(),
          'isUrlSigned': instance.isUrlSigned,
        };

_$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImpl
    _$$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImplFromJson(
            Map<String, dynamic> json) =>
        _$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImpl(
          small: json['small'] == null
              ? null
              : CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel
                  .fromJson(json['small'] as Map<String, dynamic>),
          thumbnail: json['thumbnail'] == null
              ? null
              : CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel
                  .fromJson(json['thumbnail'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImplToJson(
            _$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImpl
                instance) =>
        <String, dynamic>{
          'small': instance.small,
          'thumbnail': instance.thumbnail,
        };

_$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImpl
    _$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImplFromJson(
            Map<String, dynamic> json) =>
        _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImpl(
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

Map<String, dynamic>
    _$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImplToJson(
            _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImpl
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

_$CardIdDataAttributesQuizzesModelImpl
    _$$CardIdDataAttributesQuizzesModelImplFromJson(
            Map<String, dynamic> json) =>
        _$CardIdDataAttributesQuizzesModelImpl(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => CardIdDataAttributesQuizzesDataModel.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$CardIdDataAttributesQuizzesModelImplToJson(
        _$CardIdDataAttributesQuizzesModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$CardIdDataAttributesQuizzesDataModelImpl
    _$$CardIdDataAttributesQuizzesDataModelImplFromJson(
            Map<String, dynamic> json) =>
        _$CardIdDataAttributesQuizzesDataModelImpl(
          id: (json['id'] as num?)?.toInt(),
          attributes: json['attributes'] == null
              ? null
              : CardIdDataAttributesQuizzesDataAttributesModel.fromJson(
                  json['attributes'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CardIdDataAttributesQuizzesDataModelImplToJson(
        _$CardIdDataAttributesQuizzesDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

_$CardIdDataAttributesQuizzesDataAttributesModelImpl
    _$$CardIdDataAttributesQuizzesDataAttributesModelImplFromJson(
            Map<String, dynamic> json) =>
        _$CardIdDataAttributesQuizzesDataAttributesModelImpl(
          quizQuestion: json['quiz_question'] as String?,
          optionOne: json['option_one'] as String?,
          optionTwo: json['option_two'] as String?,
          optionThree: json['option_three'] as String?,
          optionFour: json['option_four'] as String?,
          correctOption: json['correct_option'] as String?,
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
          publishedAt: json['publishedAt'] == null
              ? null
              : DateTime.parse(json['publishedAt'] as String),
          score: (json['score'] as num?)?.toInt(),
        );

Map<String, dynamic>
    _$$CardIdDataAttributesQuizzesDataAttributesModelImplToJson(
            _$CardIdDataAttributesQuizzesDataAttributesModelImpl instance) =>
        <String, dynamic>{
          'quiz_question': instance.quizQuestion,
          'option_one': instance.optionOne,
          'option_two': instance.optionTwo,
          'option_three': instance.optionThree,
          'option_four': instance.optionFour,
          'correct_option': instance.correctOption,
          'createdAt': instance.createdAt?.toIso8601String(),
          'updatedAt': instance.updatedAt?.toIso8601String(),
          'publishedAt': instance.publishedAt?.toIso8601String(),
          'score': instance.score,
        };

_$CardIdDataAttributesUsersModelImpl
    _$$CardIdDataAttributesUsersModelImplFromJson(Map<String, dynamic> json) =>
        _$CardIdDataAttributesUsersModelImpl(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => CardIdDataAttributesUsersDataModel.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$CardIdDataAttributesUsersModelImplToJson(
        _$CardIdDataAttributesUsersModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$CardIdDataAttributesUsersDataModelImpl
    _$$CardIdDataAttributesUsersDataModelImplFromJson(
            Map<String, dynamic> json) =>
        _$CardIdDataAttributesUsersDataModelImpl(
          id: (json['id'] as num?)?.toInt(),
          attributes: json['attributes'] == null
              ? null
              : CardIdDataAttributesUsersDataAttributesModel.fromJson(
                  json['attributes'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CardIdDataAttributesUsersDataModelImplToJson(
        _$CardIdDataAttributesUsersDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

_$CardIdDataAttributesUsersDataAttributesModelImpl
    _$$CardIdDataAttributesUsersDataAttributesModelImplFromJson(
            Map<String, dynamic> json) =>
        _$CardIdDataAttributesUsersDataAttributesModelImpl(
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
        );

Map<String, dynamic> _$$CardIdDataAttributesUsersDataAttributesModelImplToJson(
        _$CardIdDataAttributesUsersDataAttributesModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'provider': instance.provider,
      'confirmed': instance.confirmed,
      'blocked': instance.blocked,
      'collection_card': instance.collectionCard,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'scores': instance.scores,
    };

_$CardIdMetaModelImpl _$$CardIdMetaModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CardIdMetaModelImpl();

Map<String, dynamic> _$$CardIdMetaModelImplToJson(
        _$CardIdMetaModelImpl instance) =>
    <String, dynamic>{};
