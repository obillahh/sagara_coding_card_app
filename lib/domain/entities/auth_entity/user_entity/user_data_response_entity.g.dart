// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataResponseEntityImpl _$$UserDataResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDataResponseEntityImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      email: json['email'] as String,
      collectionCard: (json['collection_card'] as num).toInt(),
      scores: (json['scores'] as num).toInt(),
    );

Map<String, dynamic> _$$UserDataResponseEntityImplToJson(
        _$UserDataResponseEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'collection_card': instance.collectionCard,
      'scores': instance.scores,
    };
