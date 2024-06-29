// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_score_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateScoreResponseEntityImpl _$$UpdateScoreResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateScoreResponseEntityImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      email: json['email'] as String,
      provider: json['provider'] as String,
      password: json['password'] as String,
      resetPasswordToken: json['resetPasswordToken'] as String,
      confirmationToken: json['confirmationToken'],
      confirmed: json['confirmed'] as bool,
      blocked: json['blocked'] as bool,
      collectionCard: (json['collection_card'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      scores: (json['scores'] as num).toInt(),
    );

Map<String, dynamic> _$$UpdateScoreResponseEntityImplToJson(
        _$UpdateScoreResponseEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'provider': instance.provider,
      'password': instance.password,
      'resetPasswordToken': instance.resetPasswordToken,
      'confirmationToken': instance.confirmationToken,
      'confirmed': instance.confirmed,
      'blocked': instance.blocked,
      'collection_card': instance.collectionCard,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'scores': instance.scores,
    };
