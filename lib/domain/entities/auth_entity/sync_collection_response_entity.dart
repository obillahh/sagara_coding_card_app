// To parse this JSON data, do
//
//     final syncCollectionResponseEntity = syncCollectionResponseEntityFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'sync_collection_response_entity.freezed.dart';
part 'sync_collection_response_entity.g.dart';

SyncCollectionResponseEntity syncCollectionResponseEntityFromJson(String str) =>
    SyncCollectionResponseEntity.fromJson(json.decode(str));

String syncCollectionResponseEntityToJson(SyncCollectionResponseEntity data) =>
    json.encode(data.toJson());

@freezed
class SyncCollectionResponseEntity with _$SyncCollectionResponseEntity {
  const factory SyncCollectionResponseEntity({
    @JsonKey(name: "message") required String message,
  }) = _SyncCollectionResponseEntity;

  factory SyncCollectionResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$SyncCollectionResponseEntityFromJson(json);
}
