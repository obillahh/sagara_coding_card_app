// To parse this JSON data, do
//
//     final syncCollectionResponseModel = syncCollectionResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'sync_collection_response_model.freezed.dart';
part 'sync_collection_response_model.g.dart';

SyncCollectionResponseModel syncCollectionResponseModelFromJson(String str) =>
    SyncCollectionResponseModel.fromJson(json.decode(str));

String syncCollectionResponseModelToJson(SyncCollectionResponseModel data) =>
    json.encode(data.toJson());

@freezed
class SyncCollectionResponseModel with _$SyncCollectionResponseModel {
  const factory SyncCollectionResponseModel({
    @JsonKey(name: "message") String? message,
  }) = _SyncCollectionResponseModel;

  factory SyncCollectionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SyncCollectionResponseModelFromJson(json);
}
