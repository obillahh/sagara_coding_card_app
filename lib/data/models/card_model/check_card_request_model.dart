import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'check_card_request_model.freezed.dart';
part 'check_card_request_model.g.dart';

CheckCardRequestModel checkCardRequestModelFromJson(String str) =>
    CheckCardRequestModel.fromJson(json.decode(str));

String checkCardRequestModelToJson(CheckCardRequestModel data) => json.encode(data.toJson());

@freezed
class CheckCardRequestModel with _$CheckCardRequestModel {
  const factory CheckCardRequestModel({
    @JsonKey(name: "user_id") required int userId,
  }) = _CheckCardRequestModel;

  factory CheckCardRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CheckCardRequestModelFromJson(json);
}
