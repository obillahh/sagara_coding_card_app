import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'score_update_request_model.freezed.dart';
part 'score_update_request_model.g.dart';

ScoreUpdateRequestModel scoreUpdateRequestModelFromJson(String str) =>
    ScoreUpdateRequestModel.fromJson(json.decode(str));

String scoreUpdateRequestModelToJson(ScoreUpdateRequestModel data) => json.encode(data.toJson());

@freezed
class ScoreUpdateRequestModel with _$ScoreUpdateRequestModel {
  const factory ScoreUpdateRequestModel({
    @JsonKey(name: "scores") required int scores,
  }) = _ScoreUpdateRequestModel;

  factory ScoreUpdateRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ScoreUpdateRequestModelFromJson(json);
}
