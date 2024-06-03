import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'check_card_response_entity.freezed.dart';
part 'check_card_response_entity.g.dart';

CheckCardResponseEntity checkCardResponseEntityFromJson(String str) =>
    CheckCardResponseEntity.fromJson(json.decode(str));

String checkCardResponseEntityToJson(CheckCardResponseEntity data) => json.encode(data.toJson());

@freezed
class CheckCardResponseEntity with _$CheckCardResponseEntity {
  const factory CheckCardResponseEntity({
    @JsonKey(name: "status") required int status,
    @JsonKey(name: "message") required String message,
  }) = _CheckCardResponseEntity;

  factory CheckCardResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$CheckCardResponseEntityFromJson(json);
}
