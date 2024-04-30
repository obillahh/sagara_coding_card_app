import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'add_card_collection_request_model.g.dart';

AddCardCollectionRequestModel addCardCollectionRequestModelFromJson(String str) =>
    AddCardCollectionRequestModel.fromJson(json.decode(str));

String addCardCollectionRequestModelToJson(AddCardCollectionRequestModel data) =>
    json.encode(data.toJson());

@JsonSerializable()
class AddCardCollectionRequestModel {
  @JsonKey(name: "cards")
  final CardsRequestModel cards;

  AddCardCollectionRequestModel({
    required this.cards,
  });

  factory AddCardCollectionRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AddCardCollectionRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddCardCollectionRequestModelToJson(this);
}

@JsonSerializable()
class CardsRequestModel {
  @JsonKey(name: "connect")
  final List<CardsConnectRequestModel> connect;

  CardsRequestModel({
    required this.connect,
  });

  factory CardsRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CardsRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$CardsRequestModelToJson(this);
}

@JsonSerializable()
class CardsConnectRequestModel {
  @JsonKey(name: "id")
  final int id;

  CardsConnectRequestModel({
    required this.id,
  });

  factory CardsConnectRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CardsConnectRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$CardsConnectRequestModelToJson(this);
}
