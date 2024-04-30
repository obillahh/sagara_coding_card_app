// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_card_collection_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCardCollectionRequestModel _$AddCardCollectionRequestModelFromJson(
        Map<String, dynamic> json) =>
    AddCardCollectionRequestModel(
      cards: CardsRequestModel.fromJson(json['cards'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddCardCollectionRequestModelToJson(
        AddCardCollectionRequestModel instance) =>
    <String, dynamic>{
      'cards': instance.cards,
    };

CardsRequestModel _$CardsRequestModelFromJson(Map<String, dynamic> json) =>
    CardsRequestModel(
      connect: (json['connect'] as List<dynamic>)
          .map((e) =>
              CardsConnectRequestModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CardsRequestModelToJson(CardsRequestModel instance) =>
    <String, dynamic>{
      'connect': instance.connect,
    };

CardsConnectRequestModel _$CardsConnectRequestModelFromJson(
        Map<String, dynamic> json) =>
    CardsConnectRequestModel(
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$CardsConnectRequestModelToJson(
        CardsConnectRequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
