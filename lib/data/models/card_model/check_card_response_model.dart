import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'check_card_response_model.freezed.dart';
part 'check_card_response_model.g.dart';

CheckCardResponseModel checkCardResponseModelFromJson(String str) =>
    CheckCardResponseModel.fromJson(json.decode(str));

String checkCardResponseModelToJson(CheckCardResponseModel data) => json.encode(data.toJson());

@freezed
class CheckCardResponseModel with _$CheckCardResponseModel {
  const factory CheckCardResponseModel({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "message") String? message,
  }) = _CheckCardResponseModel;

  factory CheckCardResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CheckCardResponseModelFromJson(json);
}
