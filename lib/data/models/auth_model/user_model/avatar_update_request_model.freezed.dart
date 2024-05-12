// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'avatar_update_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AvatarUpdateRequestModel _$AvatarUpdateRequestModelFromJson(
    Map<String, dynamic> json) {
  return _AvatarUpdateRequestModel.fromJson(json);
}

/// @nodoc
mixin _$AvatarUpdateRequestModel {
  @JsonKey(name: "ref")
  String get ref => throw _privateConstructorUsedError;
  @JsonKey(name: "refId")
  int get refId => throw _privateConstructorUsedError;
  @JsonKey(name: "field")
  String get field => throw _privateConstructorUsedError;
  @JsonKey(name: "files")
  String get files => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvatarUpdateRequestModelCopyWith<AvatarUpdateRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarUpdateRequestModelCopyWith<$Res> {
  factory $AvatarUpdateRequestModelCopyWith(AvatarUpdateRequestModel value,
          $Res Function(AvatarUpdateRequestModel) then) =
      _$AvatarUpdateRequestModelCopyWithImpl<$Res, AvatarUpdateRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "ref") String ref,
      @JsonKey(name: "refId") int refId,
      @JsonKey(name: "field") String field,
      @JsonKey(name: "files") String files});
}

/// @nodoc
class _$AvatarUpdateRequestModelCopyWithImpl<$Res,
        $Val extends AvatarUpdateRequestModel>
    implements $AvatarUpdateRequestModelCopyWith<$Res> {
  _$AvatarUpdateRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ref = null,
    Object? refId = null,
    Object? field = null,
    Object? files = null,
  }) {
    return _then(_value.copyWith(
      ref: null == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String,
      refId: null == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as int,
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvatarUpdateRequestModelImplCopyWith<$Res>
    implements $AvatarUpdateRequestModelCopyWith<$Res> {
  factory _$$AvatarUpdateRequestModelImplCopyWith(
          _$AvatarUpdateRequestModelImpl value,
          $Res Function(_$AvatarUpdateRequestModelImpl) then) =
      __$$AvatarUpdateRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ref") String ref,
      @JsonKey(name: "refId") int refId,
      @JsonKey(name: "field") String field,
      @JsonKey(name: "files") String files});
}

/// @nodoc
class __$$AvatarUpdateRequestModelImplCopyWithImpl<$Res>
    extends _$AvatarUpdateRequestModelCopyWithImpl<$Res,
        _$AvatarUpdateRequestModelImpl>
    implements _$$AvatarUpdateRequestModelImplCopyWith<$Res> {
  __$$AvatarUpdateRequestModelImplCopyWithImpl(
      _$AvatarUpdateRequestModelImpl _value,
      $Res Function(_$AvatarUpdateRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ref = null,
    Object? refId = null,
    Object? field = null,
    Object? files = null,
  }) {
    return _then(_$AvatarUpdateRequestModelImpl(
      ref: null == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String,
      refId: null == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as int,
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvatarUpdateRequestModelImpl implements _AvatarUpdateRequestModel {
  const _$AvatarUpdateRequestModelImpl(
      {@JsonKey(name: "ref") required this.ref,
      @JsonKey(name: "refId") required this.refId,
      @JsonKey(name: "field") required this.field,
      @JsonKey(name: "files") required this.files});

  factory _$AvatarUpdateRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvatarUpdateRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "ref")
  final String ref;
  @override
  @JsonKey(name: "refId")
  final int refId;
  @override
  @JsonKey(name: "field")
  final String field;
  @override
  @JsonKey(name: "files")
  final String files;

  @override
  String toString() {
    return 'AvatarUpdateRequestModel(ref: $ref, refId: $refId, field: $field, files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvatarUpdateRequestModelImpl &&
            (identical(other.ref, ref) || other.ref == ref) &&
            (identical(other.refId, refId) || other.refId == refId) &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.files, files) || other.files == files));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ref, refId, field, files);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvatarUpdateRequestModelImplCopyWith<_$AvatarUpdateRequestModelImpl>
      get copyWith => __$$AvatarUpdateRequestModelImplCopyWithImpl<
          _$AvatarUpdateRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvatarUpdateRequestModelImplToJson(
      this,
    );
  }
}

abstract class _AvatarUpdateRequestModel implements AvatarUpdateRequestModel {
  const factory _AvatarUpdateRequestModel(
          {@JsonKey(name: "ref") required final String ref,
          @JsonKey(name: "refId") required final int refId,
          @JsonKey(name: "field") required final String field,
          @JsonKey(name: "files") required final String files}) =
      _$AvatarUpdateRequestModelImpl;

  factory _AvatarUpdateRequestModel.fromJson(Map<String, dynamic> json) =
      _$AvatarUpdateRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "ref")
  String get ref;
  @override
  @JsonKey(name: "refId")
  int get refId;
  @override
  @JsonKey(name: "field")
  String get field;
  @override
  @JsonKey(name: "files")
  String get files;
  @override
  @JsonKey(ignore: true)
  _$$AvatarUpdateRequestModelImplCopyWith<_$AvatarUpdateRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
