// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_update_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScoreUpdateRequestModel _$ScoreUpdateRequestModelFromJson(
    Map<String, dynamic> json) {
  return _ScoreUpdateRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ScoreUpdateRequestModel {
  @JsonKey(name: "scores")
  int get scores => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScoreUpdateRequestModelCopyWith<ScoreUpdateRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreUpdateRequestModelCopyWith<$Res> {
  factory $ScoreUpdateRequestModelCopyWith(ScoreUpdateRequestModel value,
          $Res Function(ScoreUpdateRequestModel) then) =
      _$ScoreUpdateRequestModelCopyWithImpl<$Res, ScoreUpdateRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "scores") int scores});
}

/// @nodoc
class _$ScoreUpdateRequestModelCopyWithImpl<$Res,
        $Val extends ScoreUpdateRequestModel>
    implements $ScoreUpdateRequestModelCopyWith<$Res> {
  _$ScoreUpdateRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scores = null,
  }) {
    return _then(_value.copyWith(
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScoreUpdateRequestModelImplCopyWith<$Res>
    implements $ScoreUpdateRequestModelCopyWith<$Res> {
  factory _$$ScoreUpdateRequestModelImplCopyWith(
          _$ScoreUpdateRequestModelImpl value,
          $Res Function(_$ScoreUpdateRequestModelImpl) then) =
      __$$ScoreUpdateRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "scores") int scores});
}

/// @nodoc
class __$$ScoreUpdateRequestModelImplCopyWithImpl<$Res>
    extends _$ScoreUpdateRequestModelCopyWithImpl<$Res,
        _$ScoreUpdateRequestModelImpl>
    implements _$$ScoreUpdateRequestModelImplCopyWith<$Res> {
  __$$ScoreUpdateRequestModelImplCopyWithImpl(
      _$ScoreUpdateRequestModelImpl _value,
      $Res Function(_$ScoreUpdateRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scores = null,
  }) {
    return _then(_$ScoreUpdateRequestModelImpl(
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScoreUpdateRequestModelImpl implements _ScoreUpdateRequestModel {
  const _$ScoreUpdateRequestModelImpl(
      {@JsonKey(name: "scores") required this.scores});

  factory _$ScoreUpdateRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScoreUpdateRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "scores")
  final int scores;

  @override
  String toString() {
    return 'ScoreUpdateRequestModel(scores: $scores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreUpdateRequestModelImpl &&
            (identical(other.scores, scores) || other.scores == scores));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, scores);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoreUpdateRequestModelImplCopyWith<_$ScoreUpdateRequestModelImpl>
      get copyWith => __$$ScoreUpdateRequestModelImplCopyWithImpl<
          _$ScoreUpdateRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoreUpdateRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ScoreUpdateRequestModel implements ScoreUpdateRequestModel {
  const factory _ScoreUpdateRequestModel(
          {@JsonKey(name: "scores") required final int scores}) =
      _$ScoreUpdateRequestModelImpl;

  factory _ScoreUpdateRequestModel.fromJson(Map<String, dynamic> json) =
      _$ScoreUpdateRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "scores")
  int get scores;
  @override
  @JsonKey(ignore: true)
  _$$ScoreUpdateRequestModelImplCopyWith<_$ScoreUpdateRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
