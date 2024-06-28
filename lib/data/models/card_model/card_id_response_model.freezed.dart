// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_id_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CardIdResponseModel _$CardIdResponseModelFromJson(Map<String, dynamic> json) {
  return _CardIdResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CardIdResponseModel {
  @JsonKey(name: "data")
  CardIdDataModel? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "meta")
  CardIdMetaModel? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdResponseModelCopyWith<CardIdResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdResponseModelCopyWith<$Res> {
  factory $CardIdResponseModelCopyWith(
          CardIdResponseModel value, $Res Function(CardIdResponseModel) then) =
      _$CardIdResponseModelCopyWithImpl<$Res, CardIdResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") CardIdDataModel? data,
      @JsonKey(name: "meta") CardIdMetaModel? meta});

  $CardIdDataModelCopyWith<$Res>? get data;
  $CardIdMetaModelCopyWith<$Res>? get meta;
}

/// @nodoc
class _$CardIdResponseModelCopyWithImpl<$Res, $Val extends CardIdResponseModel>
    implements $CardIdResponseModelCopyWith<$Res> {
  _$CardIdResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CardIdDataModel?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as CardIdMetaModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CardIdDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdMetaModelCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $CardIdMetaModelCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardIdResponseModelImplCopyWith<$Res>
    implements $CardIdResponseModelCopyWith<$Res> {
  factory _$$CardIdResponseModelImplCopyWith(_$CardIdResponseModelImpl value,
          $Res Function(_$CardIdResponseModelImpl) then) =
      __$$CardIdResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") CardIdDataModel? data,
      @JsonKey(name: "meta") CardIdMetaModel? meta});

  @override
  $CardIdDataModelCopyWith<$Res>? get data;
  @override
  $CardIdMetaModelCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$CardIdResponseModelImplCopyWithImpl<$Res>
    extends _$CardIdResponseModelCopyWithImpl<$Res, _$CardIdResponseModelImpl>
    implements _$$CardIdResponseModelImplCopyWith<$Res> {
  __$$CardIdResponseModelImplCopyWithImpl(_$CardIdResponseModelImpl _value,
      $Res Function(_$CardIdResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$CardIdResponseModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CardIdDataModel?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as CardIdMetaModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdResponseModelImpl implements _CardIdResponseModel {
  const _$CardIdResponseModelImpl(
      {@JsonKey(name: "data") this.data, @JsonKey(name: "meta") this.meta});

  factory _$CardIdResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardIdResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final CardIdDataModel? data;
  @override
  @JsonKey(name: "meta")
  final CardIdMetaModel? meta;

  @override
  String toString() {
    return 'CardIdResponseModel(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardIdResponseModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardIdResponseModelImplCopyWith<_$CardIdResponseModelImpl> get copyWith =>
      __$$CardIdResponseModelImplCopyWithImpl<_$CardIdResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CardIdResponseModel implements CardIdResponseModel {
  const factory _CardIdResponseModel(
          {@JsonKey(name: "data") final CardIdDataModel? data,
          @JsonKey(name: "meta") final CardIdMetaModel? meta}) =
      _$CardIdResponseModelImpl;

  factory _CardIdResponseModel.fromJson(Map<String, dynamic> json) =
      _$CardIdResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  CardIdDataModel? get data;
  @override
  @JsonKey(name: "meta")
  CardIdMetaModel? get meta;
  @override
  @JsonKey(ignore: true)
  _$$CardIdResponseModelImplCopyWith<_$CardIdResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CardIdDataModel _$CardIdDataModelFromJson(Map<String, dynamic> json) {
  return _CardIdDataModel.fromJson(json);
}

/// @nodoc
mixin _$CardIdDataModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "attributes")
  CardIdDataAttributesModel? get attributes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataModelCopyWith<CardIdDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataModelCopyWith<$Res> {
  factory $CardIdDataModelCopyWith(
          CardIdDataModel value, $Res Function(CardIdDataModel) then) =
      _$CardIdDataModelCopyWithImpl<$Res, CardIdDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "attributes") CardIdDataAttributesModel? attributes});

  $CardIdDataAttributesModelCopyWith<$Res>? get attributes;
}

/// @nodoc
class _$CardIdDataModelCopyWithImpl<$Res, $Val extends CardIdDataModel>
    implements $CardIdDataModelCopyWith<$Res> {
  _$CardIdDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataAttributesModelCopyWith<$Res>? get attributes {
    if (_value.attributes == null) {
      return null;
    }

    return $CardIdDataAttributesModelCopyWith<$Res>(_value.attributes!,
        (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardIdDataModelImplCopyWith<$Res>
    implements $CardIdDataModelCopyWith<$Res> {
  factory _$$CardIdDataModelImplCopyWith(_$CardIdDataModelImpl value,
          $Res Function(_$CardIdDataModelImpl) then) =
      __$$CardIdDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "attributes") CardIdDataAttributesModel? attributes});

  @override
  $CardIdDataAttributesModelCopyWith<$Res>? get attributes;
}

/// @nodoc
class __$$CardIdDataModelImplCopyWithImpl<$Res>
    extends _$CardIdDataModelCopyWithImpl<$Res, _$CardIdDataModelImpl>
    implements _$$CardIdDataModelImplCopyWith<$Res> {
  __$$CardIdDataModelImplCopyWithImpl(
      _$CardIdDataModelImpl _value, $Res Function(_$CardIdDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$CardIdDataModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataModelImpl implements _CardIdDataModel {
  const _$CardIdDataModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "attributes") this.attributes});

  factory _$CardIdDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardIdDataModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "attributes")
  final CardIdDataAttributesModel? attributes;

  @override
  String toString() {
    return 'CardIdDataModel(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardIdDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardIdDataModelImplCopyWith<_$CardIdDataModelImpl> get copyWith =>
      __$$CardIdDataModelImplCopyWithImpl<_$CardIdDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataModelImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataModel implements CardIdDataModel {
  const factory _CardIdDataModel(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "attributes")
      final CardIdDataAttributesModel? attributes}) = _$CardIdDataModelImpl;

  factory _CardIdDataModel.fromJson(Map<String, dynamic> json) =
      _$CardIdDataModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "attributes")
  CardIdDataAttributesModel? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataModelImplCopyWith<_$CardIdDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CardIdDataAttributesModel _$CardIdDataAttributesModelFromJson(
    Map<String, dynamic> json) {
  return _CardIdDataAttributesModel.fromJson(json);
}

/// @nodoc
mixin _$CardIdDataAttributesModel {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "level")
  String? get level => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "publishedAt")
  DateTime? get publishedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar_card")
  CardIdDataAttributesAvatarCardModel? get avatarCard =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "quizzes")
  CardIdDataAttributesQuizzesModel? get quizzes =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "users")
  CardIdDataAttributesUsersModel? get users =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataAttributesModelCopyWith<CardIdDataAttributesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataAttributesModelCopyWith<$Res> {
  factory $CardIdDataAttributesModelCopyWith(CardIdDataAttributesModel value,
          $Res Function(CardIdDataAttributesModel) then) =
      _$CardIdDataAttributesModelCopyWithImpl<$Res, CardIdDataAttributesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "level") String? level,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "publishedAt") DateTime? publishedAt,
      @JsonKey(name: "avatar_card")
      CardIdDataAttributesAvatarCardModel? avatarCard,
      @JsonKey(name: "quizzes") CardIdDataAttributesQuizzesModel? quizzes,
      @JsonKey(name: "users") CardIdDataAttributesUsersModel? users});

  $CardIdDataAttributesAvatarCardModelCopyWith<$Res>? get avatarCard;
  $CardIdDataAttributesQuizzesModelCopyWith<$Res>? get quizzes;
  $CardIdDataAttributesUsersModelCopyWith<$Res>? get users;
}

/// @nodoc
class _$CardIdDataAttributesModelCopyWithImpl<$Res,
        $Val extends CardIdDataAttributesModel>
    implements $CardIdDataAttributesModelCopyWith<$Res> {
  _$CardIdDataAttributesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? role = freezed,
    Object? description = freezed,
    Object? level = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? publishedAt = freezed,
    Object? avatarCard = freezed,
    Object? quizzes = freezed,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      avatarCard: freezed == avatarCard
          ? _value.avatarCard
          : avatarCard // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesAvatarCardModel?,
      quizzes: freezed == quizzes
          ? _value.quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesQuizzesModel?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesUsersModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataAttributesAvatarCardModelCopyWith<$Res>? get avatarCard {
    if (_value.avatarCard == null) {
      return null;
    }

    return $CardIdDataAttributesAvatarCardModelCopyWith<$Res>(
        _value.avatarCard!, (value) {
      return _then(_value.copyWith(avatarCard: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataAttributesQuizzesModelCopyWith<$Res>? get quizzes {
    if (_value.quizzes == null) {
      return null;
    }

    return $CardIdDataAttributesQuizzesModelCopyWith<$Res>(_value.quizzes!,
        (value) {
      return _then(_value.copyWith(quizzes: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataAttributesUsersModelCopyWith<$Res>? get users {
    if (_value.users == null) {
      return null;
    }

    return $CardIdDataAttributesUsersModelCopyWith<$Res>(_value.users!,
        (value) {
      return _then(_value.copyWith(users: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardIdDataAttributesModelImplCopyWith<$Res>
    implements $CardIdDataAttributesModelCopyWith<$Res> {
  factory _$$CardIdDataAttributesModelImplCopyWith(
          _$CardIdDataAttributesModelImpl value,
          $Res Function(_$CardIdDataAttributesModelImpl) then) =
      __$$CardIdDataAttributesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "level") String? level,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "publishedAt") DateTime? publishedAt,
      @JsonKey(name: "avatar_card")
      CardIdDataAttributesAvatarCardModel? avatarCard,
      @JsonKey(name: "quizzes") CardIdDataAttributesQuizzesModel? quizzes,
      @JsonKey(name: "users") CardIdDataAttributesUsersModel? users});

  @override
  $CardIdDataAttributesAvatarCardModelCopyWith<$Res>? get avatarCard;
  @override
  $CardIdDataAttributesQuizzesModelCopyWith<$Res>? get quizzes;
  @override
  $CardIdDataAttributesUsersModelCopyWith<$Res>? get users;
}

/// @nodoc
class __$$CardIdDataAttributesModelImplCopyWithImpl<$Res>
    extends _$CardIdDataAttributesModelCopyWithImpl<$Res,
        _$CardIdDataAttributesModelImpl>
    implements _$$CardIdDataAttributesModelImplCopyWith<$Res> {
  __$$CardIdDataAttributesModelImplCopyWithImpl(
      _$CardIdDataAttributesModelImpl _value,
      $Res Function(_$CardIdDataAttributesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? role = freezed,
    Object? description = freezed,
    Object? level = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? publishedAt = freezed,
    Object? avatarCard = freezed,
    Object? quizzes = freezed,
    Object? users = freezed,
  }) {
    return _then(_$CardIdDataAttributesModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      avatarCard: freezed == avatarCard
          ? _value.avatarCard
          : avatarCard // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesAvatarCardModel?,
      quizzes: freezed == quizzes
          ? _value.quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesQuizzesModel?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesUsersModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataAttributesModelImpl implements _CardIdDataAttributesModel {
  const _$CardIdDataAttributesModelImpl(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "role") this.role,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "level") this.level,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "publishedAt") this.publishedAt,
      @JsonKey(name: "avatar_card") this.avatarCard,
      @JsonKey(name: "quizzes") this.quizzes,
      @JsonKey(name: "users") this.users});

  factory _$CardIdDataAttributesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardIdDataAttributesModelImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "role")
  final String? role;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "level")
  final String? level;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "publishedAt")
  final DateTime? publishedAt;
  @override
  @JsonKey(name: "avatar_card")
  final CardIdDataAttributesAvatarCardModel? avatarCard;
  @override
  @JsonKey(name: "quizzes")
  final CardIdDataAttributesQuizzesModel? quizzes;
  @override
  @JsonKey(name: "users")
  final CardIdDataAttributesUsersModel? users;

  @override
  String toString() {
    return 'CardIdDataAttributesModel(name: $name, role: $role, description: $description, level: $level, createdAt: $createdAt, updatedAt: $updatedAt, publishedAt: $publishedAt, avatarCard: $avatarCard, quizzes: $quizzes, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardIdDataAttributesModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.avatarCard, avatarCard) ||
                other.avatarCard == avatarCard) &&
            (identical(other.quizzes, quizzes) || other.quizzes == quizzes) &&
            (identical(other.users, users) || other.users == users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, role, description, level,
      createdAt, updatedAt, publishedAt, avatarCard, quizzes, users);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardIdDataAttributesModelImplCopyWith<_$CardIdDataAttributesModelImpl>
      get copyWith => __$$CardIdDataAttributesModelImplCopyWithImpl<
          _$CardIdDataAttributesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataAttributesModelImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataAttributesModel implements CardIdDataAttributesModel {
  const factory _CardIdDataAttributesModel(
      {@JsonKey(name: "name") final String? name,
      @JsonKey(name: "role") final String? role,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "level") final String? level,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "publishedAt") final DateTime? publishedAt,
      @JsonKey(name: "avatar_card")
      final CardIdDataAttributesAvatarCardModel? avatarCard,
      @JsonKey(name: "quizzes") final CardIdDataAttributesQuizzesModel? quizzes,
      @JsonKey(name: "users")
      final CardIdDataAttributesUsersModel?
          users}) = _$CardIdDataAttributesModelImpl;

  factory _CardIdDataAttributesModel.fromJson(Map<String, dynamic> json) =
      _$CardIdDataAttributesModelImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "role")
  String? get role;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "level")
  String? get level;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "publishedAt")
  DateTime? get publishedAt;
  @override
  @JsonKey(name: "avatar_card")
  CardIdDataAttributesAvatarCardModel? get avatarCard;
  @override
  @JsonKey(name: "quizzes")
  CardIdDataAttributesQuizzesModel? get quizzes;
  @override
  @JsonKey(name: "users")
  CardIdDataAttributesUsersModel? get users;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataAttributesModelImplCopyWith<_$CardIdDataAttributesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdDataAttributesAvatarCardModel
    _$CardIdDataAttributesAvatarCardModelFromJson(Map<String, dynamic> json) {
  return _CardIdDataAttributesAvatarCardModel.fromJson(json);
}

/// @nodoc
mixin _$CardIdDataAttributesAvatarCardModel {
  @JsonKey(name: "data")
  CardIdDataAttributesAvatarCardDataModel? get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataAttributesAvatarCardModelCopyWith<
          CardIdDataAttributesAvatarCardModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataAttributesAvatarCardModelCopyWith<$Res> {
  factory $CardIdDataAttributesAvatarCardModelCopyWith(
          CardIdDataAttributesAvatarCardModel value,
          $Res Function(CardIdDataAttributesAvatarCardModel) then) =
      _$CardIdDataAttributesAvatarCardModelCopyWithImpl<$Res,
          CardIdDataAttributesAvatarCardModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") CardIdDataAttributesAvatarCardDataModel? data});

  $CardIdDataAttributesAvatarCardDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$CardIdDataAttributesAvatarCardModelCopyWithImpl<$Res,
        $Val extends CardIdDataAttributesAvatarCardModel>
    implements $CardIdDataAttributesAvatarCardModelCopyWith<$Res> {
  _$CardIdDataAttributesAvatarCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesAvatarCardDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataAttributesAvatarCardDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CardIdDataAttributesAvatarCardDataModelCopyWith<$Res>(_value.data!,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardIdDataAttributesAvatarCardModelImplCopyWith<$Res>
    implements $CardIdDataAttributesAvatarCardModelCopyWith<$Res> {
  factory _$$CardIdDataAttributesAvatarCardModelImplCopyWith(
          _$CardIdDataAttributesAvatarCardModelImpl value,
          $Res Function(_$CardIdDataAttributesAvatarCardModelImpl) then) =
      __$$CardIdDataAttributesAvatarCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") CardIdDataAttributesAvatarCardDataModel? data});

  @override
  $CardIdDataAttributesAvatarCardDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CardIdDataAttributesAvatarCardModelImplCopyWithImpl<$Res>
    extends _$CardIdDataAttributesAvatarCardModelCopyWithImpl<$Res,
        _$CardIdDataAttributesAvatarCardModelImpl>
    implements _$$CardIdDataAttributesAvatarCardModelImplCopyWith<$Res> {
  __$$CardIdDataAttributesAvatarCardModelImplCopyWithImpl(
      _$CardIdDataAttributesAvatarCardModelImpl _value,
      $Res Function(_$CardIdDataAttributesAvatarCardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$CardIdDataAttributesAvatarCardModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesAvatarCardDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataAttributesAvatarCardModelImpl
    implements _CardIdDataAttributesAvatarCardModel {
  const _$CardIdDataAttributesAvatarCardModelImpl(
      {@JsonKey(name: "data") this.data});

  factory _$CardIdDataAttributesAvatarCardModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardIdDataAttributesAvatarCardModelImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final CardIdDataAttributesAvatarCardDataModel? data;

  @override
  String toString() {
    return 'CardIdDataAttributesAvatarCardModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardIdDataAttributesAvatarCardModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardIdDataAttributesAvatarCardModelImplCopyWith<
          _$CardIdDataAttributesAvatarCardModelImpl>
      get copyWith => __$$CardIdDataAttributesAvatarCardModelImplCopyWithImpl<
          _$CardIdDataAttributesAvatarCardModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataAttributesAvatarCardModelImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataAttributesAvatarCardModel
    implements CardIdDataAttributesAvatarCardModel {
  const factory _CardIdDataAttributesAvatarCardModel(
          {@JsonKey(name: "data")
          final CardIdDataAttributesAvatarCardDataModel? data}) =
      _$CardIdDataAttributesAvatarCardModelImpl;

  factory _CardIdDataAttributesAvatarCardModel.fromJson(
          Map<String, dynamic> json) =
      _$CardIdDataAttributesAvatarCardModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  CardIdDataAttributesAvatarCardDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataAttributesAvatarCardModelImplCopyWith<
          _$CardIdDataAttributesAvatarCardModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdDataAttributesAvatarCardDataModel
    _$CardIdDataAttributesAvatarCardDataModelFromJson(
        Map<String, dynamic> json) {
  return _CardIdDataAttributesAvatarCardDataModel.fromJson(json);
}

/// @nodoc
mixin _$CardIdDataAttributesAvatarCardDataModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "attributes")
  CardIdDataAttributesAvatarCardDataAttributesModel? get attributes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataAttributesAvatarCardDataModelCopyWith<
          CardIdDataAttributesAvatarCardDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataAttributesAvatarCardDataModelCopyWith<$Res> {
  factory $CardIdDataAttributesAvatarCardDataModelCopyWith(
          CardIdDataAttributesAvatarCardDataModel value,
          $Res Function(CardIdDataAttributesAvatarCardDataModel) then) =
      _$CardIdDataAttributesAvatarCardDataModelCopyWithImpl<$Res,
          CardIdDataAttributesAvatarCardDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "attributes")
      CardIdDataAttributesAvatarCardDataAttributesModel? attributes});

  $CardIdDataAttributesAvatarCardDataAttributesModelCopyWith<$Res>?
      get attributes;
}

/// @nodoc
class _$CardIdDataAttributesAvatarCardDataModelCopyWithImpl<$Res,
        $Val extends CardIdDataAttributesAvatarCardDataModel>
    implements $CardIdDataAttributesAvatarCardDataModelCopyWith<$Res> {
  _$CardIdDataAttributesAvatarCardDataModelCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesAvatarCardDataAttributesModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataAttributesAvatarCardDataAttributesModelCopyWith<$Res>?
      get attributes {
    if (_value.attributes == null) {
      return null;
    }

    return $CardIdDataAttributesAvatarCardDataAttributesModelCopyWith<$Res>(
        _value.attributes!, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardIdDataAttributesAvatarCardDataModelImplCopyWith<$Res>
    implements $CardIdDataAttributesAvatarCardDataModelCopyWith<$Res> {
  factory _$$CardIdDataAttributesAvatarCardDataModelImplCopyWith(
          _$CardIdDataAttributesAvatarCardDataModelImpl value,
          $Res Function(_$CardIdDataAttributesAvatarCardDataModelImpl) then) =
      __$$CardIdDataAttributesAvatarCardDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "attributes")
      CardIdDataAttributesAvatarCardDataAttributesModel? attributes});

  @override
  $CardIdDataAttributesAvatarCardDataAttributesModelCopyWith<$Res>?
      get attributes;
}

/// @nodoc
class __$$CardIdDataAttributesAvatarCardDataModelImplCopyWithImpl<$Res>
    extends _$CardIdDataAttributesAvatarCardDataModelCopyWithImpl<$Res,
        _$CardIdDataAttributesAvatarCardDataModelImpl>
    implements _$$CardIdDataAttributesAvatarCardDataModelImplCopyWith<$Res> {
  __$$CardIdDataAttributesAvatarCardDataModelImplCopyWithImpl(
      _$CardIdDataAttributesAvatarCardDataModelImpl _value,
      $Res Function(_$CardIdDataAttributesAvatarCardDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$CardIdDataAttributesAvatarCardDataModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesAvatarCardDataAttributesModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataAttributesAvatarCardDataModelImpl
    implements _CardIdDataAttributesAvatarCardDataModel {
  const _$CardIdDataAttributesAvatarCardDataModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "attributes") this.attributes});

  factory _$CardIdDataAttributesAvatarCardDataModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardIdDataAttributesAvatarCardDataModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "attributes")
  final CardIdDataAttributesAvatarCardDataAttributesModel? attributes;

  @override
  String toString() {
    return 'CardIdDataAttributesAvatarCardDataModel(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardIdDataAttributesAvatarCardDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardIdDataAttributesAvatarCardDataModelImplCopyWith<
          _$CardIdDataAttributesAvatarCardDataModelImpl>
      get copyWith =>
          __$$CardIdDataAttributesAvatarCardDataModelImplCopyWithImpl<
              _$CardIdDataAttributesAvatarCardDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataAttributesAvatarCardDataModelImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataAttributesAvatarCardDataModel
    implements CardIdDataAttributesAvatarCardDataModel {
  const factory _CardIdDataAttributesAvatarCardDataModel(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "attributes")
      final CardIdDataAttributesAvatarCardDataAttributesModel?
          attributes}) = _$CardIdDataAttributesAvatarCardDataModelImpl;

  factory _CardIdDataAttributesAvatarCardDataModel.fromJson(
          Map<String, dynamic> json) =
      _$CardIdDataAttributesAvatarCardDataModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "attributes")
  CardIdDataAttributesAvatarCardDataAttributesModel? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataAttributesAvatarCardDataModelImplCopyWith<
          _$CardIdDataAttributesAvatarCardDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdDataAttributesAvatarCardDataAttributesModel
    _$CardIdDataAttributesAvatarCardDataAttributesModelFromJson(
        Map<String, dynamic> json) {
  return _CardIdDataAttributesAvatarCardDataAttributesModel.fromJson(json);
}

/// @nodoc
mixin _$CardIdDataAttributesAvatarCardDataAttributesModel {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "alternativeText")
  dynamic get alternativeText => throw _privateConstructorUsedError;
  @JsonKey(name: "caption")
  dynamic get caption => throw _privateConstructorUsedError;
  @JsonKey(name: "width")
  int? get width => throw _privateConstructorUsedError;
  @JsonKey(name: "height")
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: "formats")
  CardIdDataAttributesAvatarCardDataAttributesFormatsModel? get formats =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "hash")
  String? get hash => throw _privateConstructorUsedError;
  @JsonKey(name: "ext")
  String? get ext => throw _privateConstructorUsedError;
  @JsonKey(name: "mime")
  String? get mime => throw _privateConstructorUsedError;
  @JsonKey(name: "size")
  double? get size => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: "previewUrl")
  dynamic get previewUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "provider")
  String? get provider => throw _privateConstructorUsedError;
  @JsonKey(name: "provider_metadata")
  dynamic get providerMetadata => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "isUrlSigned")
  bool? get isUrlSigned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataAttributesAvatarCardDataAttributesModelCopyWith<
          CardIdDataAttributesAvatarCardDataAttributesModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataAttributesAvatarCardDataAttributesModelCopyWith<
    $Res> {
  factory $CardIdDataAttributesAvatarCardDataAttributesModelCopyWith(
          CardIdDataAttributesAvatarCardDataAttributesModel value,
          $Res Function(CardIdDataAttributesAvatarCardDataAttributesModel)
              then) =
      _$CardIdDataAttributesAvatarCardDataAttributesModelCopyWithImpl<$Res,
          CardIdDataAttributesAvatarCardDataAttributesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "alternativeText") dynamic alternativeText,
      @JsonKey(name: "caption") dynamic caption,
      @JsonKey(name: "width") int? width,
      @JsonKey(name: "height") int? height,
      @JsonKey(name: "formats")
      CardIdDataAttributesAvatarCardDataAttributesFormatsModel? formats,
      @JsonKey(name: "hash") String? hash,
      @JsonKey(name: "ext") String? ext,
      @JsonKey(name: "mime") String? mime,
      @JsonKey(name: "size") double? size,
      @JsonKey(name: "url") String? url,
      @JsonKey(name: "previewUrl") dynamic previewUrl,
      @JsonKey(name: "provider") String? provider,
      @JsonKey(name: "provider_metadata") dynamic providerMetadata,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "isUrlSigned") bool? isUrlSigned});

  $CardIdDataAttributesAvatarCardDataAttributesFormatsModelCopyWith<$Res>?
      get formats;
}

/// @nodoc
class _$CardIdDataAttributesAvatarCardDataAttributesModelCopyWithImpl<$Res,
        $Val extends CardIdDataAttributesAvatarCardDataAttributesModel>
    implements
        $CardIdDataAttributesAvatarCardDataAttributesModelCopyWith<$Res> {
  _$CardIdDataAttributesAvatarCardDataAttributesModelCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? alternativeText = freezed,
    Object? caption = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? formats = freezed,
    Object? hash = freezed,
    Object? ext = freezed,
    Object? mime = freezed,
    Object? size = freezed,
    Object? url = freezed,
    Object? previewUrl = freezed,
    Object? provider = freezed,
    Object? providerMetadata = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isUrlSigned = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      alternativeText: freezed == alternativeText
          ? _value.alternativeText
          : alternativeText // ignore: cast_nullable_to_non_nullable
              as dynamic,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as dynamic,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      formats: freezed == formats
          ? _value.formats
          : formats // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesAvatarCardDataAttributesFormatsModel?,
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      ext: freezed == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String?,
      mime: freezed == mime
          ? _value.mime
          : mime // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      providerMetadata: freezed == providerMetadata
          ? _value.providerMetadata
          : providerMetadata // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isUrlSigned: freezed == isUrlSigned
          ? _value.isUrlSigned
          : isUrlSigned // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataAttributesAvatarCardDataAttributesFormatsModelCopyWith<$Res>?
      get formats {
    if (_value.formats == null) {
      return null;
    }

    return $CardIdDataAttributesAvatarCardDataAttributesFormatsModelCopyWith<
        $Res>(_value.formats!, (value) {
      return _then(_value.copyWith(formats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardIdDataAttributesAvatarCardDataAttributesModelImplCopyWith<
        $Res>
    implements
        $CardIdDataAttributesAvatarCardDataAttributesModelCopyWith<$Res> {
  factory _$$CardIdDataAttributesAvatarCardDataAttributesModelImplCopyWith(
          _$CardIdDataAttributesAvatarCardDataAttributesModelImpl value,
          $Res Function(_$CardIdDataAttributesAvatarCardDataAttributesModelImpl)
              then) =
      __$$CardIdDataAttributesAvatarCardDataAttributesModelImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "alternativeText") dynamic alternativeText,
      @JsonKey(name: "caption") dynamic caption,
      @JsonKey(name: "width") int? width,
      @JsonKey(name: "height") int? height,
      @JsonKey(name: "formats")
      CardIdDataAttributesAvatarCardDataAttributesFormatsModel? formats,
      @JsonKey(name: "hash") String? hash,
      @JsonKey(name: "ext") String? ext,
      @JsonKey(name: "mime") String? mime,
      @JsonKey(name: "size") double? size,
      @JsonKey(name: "url") String? url,
      @JsonKey(name: "previewUrl") dynamic previewUrl,
      @JsonKey(name: "provider") String? provider,
      @JsonKey(name: "provider_metadata") dynamic providerMetadata,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "isUrlSigned") bool? isUrlSigned});

  @override
  $CardIdDataAttributesAvatarCardDataAttributesFormatsModelCopyWith<$Res>?
      get formats;
}

/// @nodoc
class __$$CardIdDataAttributesAvatarCardDataAttributesModelImplCopyWithImpl<
        $Res>
    extends _$CardIdDataAttributesAvatarCardDataAttributesModelCopyWithImpl<
        $Res, _$CardIdDataAttributesAvatarCardDataAttributesModelImpl>
    implements
        _$$CardIdDataAttributesAvatarCardDataAttributesModelImplCopyWith<$Res> {
  __$$CardIdDataAttributesAvatarCardDataAttributesModelImplCopyWithImpl(
      _$CardIdDataAttributesAvatarCardDataAttributesModelImpl _value,
      $Res Function(_$CardIdDataAttributesAvatarCardDataAttributesModelImpl)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? alternativeText = freezed,
    Object? caption = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? formats = freezed,
    Object? hash = freezed,
    Object? ext = freezed,
    Object? mime = freezed,
    Object? size = freezed,
    Object? url = freezed,
    Object? previewUrl = freezed,
    Object? provider = freezed,
    Object? providerMetadata = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isUrlSigned = freezed,
  }) {
    return _then(_$CardIdDataAttributesAvatarCardDataAttributesModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      alternativeText: freezed == alternativeText
          ? _value.alternativeText
          : alternativeText // ignore: cast_nullable_to_non_nullable
              as dynamic,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as dynamic,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      formats: freezed == formats
          ? _value.formats
          : formats // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesAvatarCardDataAttributesFormatsModel?,
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      ext: freezed == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String?,
      mime: freezed == mime
          ? _value.mime
          : mime // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      providerMetadata: freezed == providerMetadata
          ? _value.providerMetadata
          : providerMetadata // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isUrlSigned: freezed == isUrlSigned
          ? _value.isUrlSigned
          : isUrlSigned // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataAttributesAvatarCardDataAttributesModelImpl
    implements _CardIdDataAttributesAvatarCardDataAttributesModel {
  const _$CardIdDataAttributesAvatarCardDataAttributesModelImpl(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "alternativeText") this.alternativeText,
      @JsonKey(name: "caption") this.caption,
      @JsonKey(name: "width") this.width,
      @JsonKey(name: "height") this.height,
      @JsonKey(name: "formats") this.formats,
      @JsonKey(name: "hash") this.hash,
      @JsonKey(name: "ext") this.ext,
      @JsonKey(name: "mime") this.mime,
      @JsonKey(name: "size") this.size,
      @JsonKey(name: "url") this.url,
      @JsonKey(name: "previewUrl") this.previewUrl,
      @JsonKey(name: "provider") this.provider,
      @JsonKey(name: "provider_metadata") this.providerMetadata,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "isUrlSigned") this.isUrlSigned});

  factory _$CardIdDataAttributesAvatarCardDataAttributesModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardIdDataAttributesAvatarCardDataAttributesModelImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "alternativeText")
  final dynamic alternativeText;
  @override
  @JsonKey(name: "caption")
  final dynamic caption;
  @override
  @JsonKey(name: "width")
  final int? width;
  @override
  @JsonKey(name: "height")
  final int? height;
  @override
  @JsonKey(name: "formats")
  final CardIdDataAttributesAvatarCardDataAttributesFormatsModel? formats;
  @override
  @JsonKey(name: "hash")
  final String? hash;
  @override
  @JsonKey(name: "ext")
  final String? ext;
  @override
  @JsonKey(name: "mime")
  final String? mime;
  @override
  @JsonKey(name: "size")
  final double? size;
  @override
  @JsonKey(name: "url")
  final String? url;
  @override
  @JsonKey(name: "previewUrl")
  final dynamic previewUrl;
  @override
  @JsonKey(name: "provider")
  final String? provider;
  @override
  @JsonKey(name: "provider_metadata")
  final dynamic providerMetadata;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "isUrlSigned")
  final bool? isUrlSigned;

  @override
  String toString() {
    return 'CardIdDataAttributesAvatarCardDataAttributesModel(name: $name, alternativeText: $alternativeText, caption: $caption, width: $width, height: $height, formats: $formats, hash: $hash, ext: $ext, mime: $mime, size: $size, url: $url, previewUrl: $previewUrl, provider: $provider, providerMetadata: $providerMetadata, createdAt: $createdAt, updatedAt: $updatedAt, isUrlSigned: $isUrlSigned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardIdDataAttributesAvatarCardDataAttributesModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.alternativeText, alternativeText) &&
            const DeepCollectionEquality().equals(other.caption, caption) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.formats, formats) || other.formats == formats) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.ext, ext) || other.ext == ext) &&
            (identical(other.mime, mime) || other.mime == mime) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality()
                .equals(other.previewUrl, previewUrl) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            const DeepCollectionEquality()
                .equals(other.providerMetadata, providerMetadata) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isUrlSigned, isUrlSigned) ||
                other.isUrlSigned == isUrlSigned));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(alternativeText),
      const DeepCollectionEquality().hash(caption),
      width,
      height,
      formats,
      hash,
      ext,
      mime,
      size,
      url,
      const DeepCollectionEquality().hash(previewUrl),
      provider,
      const DeepCollectionEquality().hash(providerMetadata),
      createdAt,
      updatedAt,
      isUrlSigned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardIdDataAttributesAvatarCardDataAttributesModelImplCopyWith<
          _$CardIdDataAttributesAvatarCardDataAttributesModelImpl>
      get copyWith =>
          __$$CardIdDataAttributesAvatarCardDataAttributesModelImplCopyWithImpl<
                  _$CardIdDataAttributesAvatarCardDataAttributesModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataAttributesAvatarCardDataAttributesModelImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataAttributesAvatarCardDataAttributesModel
    implements CardIdDataAttributesAvatarCardDataAttributesModel {
  const factory _CardIdDataAttributesAvatarCardDataAttributesModel(
          {@JsonKey(name: "name") final String? name,
          @JsonKey(name: "alternativeText") final dynamic alternativeText,
          @JsonKey(name: "caption") final dynamic caption,
          @JsonKey(name: "width") final int? width,
          @JsonKey(name: "height") final int? height,
          @JsonKey(name: "formats")
          final CardIdDataAttributesAvatarCardDataAttributesFormatsModel? formats,
          @JsonKey(name: "hash") final String? hash,
          @JsonKey(name: "ext") final String? ext,
          @JsonKey(name: "mime") final String? mime,
          @JsonKey(name: "size") final double? size,
          @JsonKey(name: "url") final String? url,
          @JsonKey(name: "previewUrl") final dynamic previewUrl,
          @JsonKey(name: "provider") final String? provider,
          @JsonKey(name: "provider_metadata") final dynamic providerMetadata,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt,
          @JsonKey(name: "isUrlSigned") final bool? isUrlSigned}) =
      _$CardIdDataAttributesAvatarCardDataAttributesModelImpl;

  factory _CardIdDataAttributesAvatarCardDataAttributesModel.fromJson(
          Map<String, dynamic> json) =
      _$CardIdDataAttributesAvatarCardDataAttributesModelImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "alternativeText")
  dynamic get alternativeText;
  @override
  @JsonKey(name: "caption")
  dynamic get caption;
  @override
  @JsonKey(name: "width")
  int? get width;
  @override
  @JsonKey(name: "height")
  int? get height;
  @override
  @JsonKey(name: "formats")
  CardIdDataAttributesAvatarCardDataAttributesFormatsModel? get formats;
  @override
  @JsonKey(name: "hash")
  String? get hash;
  @override
  @JsonKey(name: "ext")
  String? get ext;
  @override
  @JsonKey(name: "mime")
  String? get mime;
  @override
  @JsonKey(name: "size")
  double? get size;
  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(name: "previewUrl")
  dynamic get previewUrl;
  @override
  @JsonKey(name: "provider")
  String? get provider;
  @override
  @JsonKey(name: "provider_metadata")
  dynamic get providerMetadata;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "isUrlSigned")
  bool? get isUrlSigned;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataAttributesAvatarCardDataAttributesModelImplCopyWith<
          _$CardIdDataAttributesAvatarCardDataAttributesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdDataAttributesAvatarCardDataAttributesFormatsModel
    _$CardIdDataAttributesAvatarCardDataAttributesFormatsModelFromJson(
        Map<String, dynamic> json) {
  return _CardIdDataAttributesAvatarCardDataAttributesFormatsModel.fromJson(
      json);
}

/// @nodoc
mixin _$CardIdDataAttributesAvatarCardDataAttributesFormatsModel {
  @JsonKey(name: "small")
  CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel? get small =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail")
  CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel? get thumbnail =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataAttributesAvatarCardDataAttributesFormatsModelCopyWith<
          CardIdDataAttributesAvatarCardDataAttributesFormatsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataAttributesAvatarCardDataAttributesFormatsModelCopyWith<
    $Res> {
  factory $CardIdDataAttributesAvatarCardDataAttributesFormatsModelCopyWith(
          CardIdDataAttributesAvatarCardDataAttributesFormatsModel value,
          $Res Function(
                  CardIdDataAttributesAvatarCardDataAttributesFormatsModel)
              then) =
      _$CardIdDataAttributesAvatarCardDataAttributesFormatsModelCopyWithImpl<
          $Res, CardIdDataAttributesAvatarCardDataAttributesFormatsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "small")
      CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel? small,
      @JsonKey(name: "thumbnail")
      CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel? thumbnail});

  $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelCopyWith<$Res>?
      get small;
  $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelCopyWith<$Res>?
      get thumbnail;
}

/// @nodoc
class _$CardIdDataAttributesAvatarCardDataAttributesFormatsModelCopyWithImpl<
        $Res,
        $Val extends CardIdDataAttributesAvatarCardDataAttributesFormatsModel>
    implements
        $CardIdDataAttributesAvatarCardDataAttributesFormatsModelCopyWith<
            $Res> {
  _$CardIdDataAttributesAvatarCardDataAttributesFormatsModelCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelCopyWith<$Res>?
      get small {
    if (_value.small == null) {
      return null;
    }

    return $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelCopyWith<
        $Res>(_value.small!, (value) {
      return _then(_value.copyWith(small: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelCopyWith<$Res>?
      get thumbnail {
    if (_value.thumbnail == null) {
      return null;
    }

    return $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelCopyWith<
        $Res>(_value.thumbnail!, (value) {
      return _then(_value.copyWith(thumbnail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImplCopyWith<
        $Res>
    implements
        $CardIdDataAttributesAvatarCardDataAttributesFormatsModelCopyWith<
            $Res> {
  factory _$$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImplCopyWith(
          _$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImpl value,
          $Res Function(
                  _$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImpl)
              then) =
      __$$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "small")
      CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel? small,
      @JsonKey(name: "thumbnail")
      CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel? thumbnail});

  @override
  $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelCopyWith<$Res>?
      get small;
  @override
  $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelCopyWith<$Res>?
      get thumbnail;
}

/// @nodoc
class __$$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImplCopyWithImpl<
        $Res>
    extends _$CardIdDataAttributesAvatarCardDataAttributesFormatsModelCopyWithImpl<
        $Res, _$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImpl>
    implements
        _$$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImplCopyWith<
            $Res> {
  __$$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImplCopyWithImpl(
      _$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImpl _value,
      $Res Function(
              _$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImpl)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImpl(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImpl
    implements _CardIdDataAttributesAvatarCardDataAttributesFormatsModel {
  const _$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImpl(
      {@JsonKey(name: "small") this.small,
      @JsonKey(name: "thumbnail") this.thumbnail});

  factory _$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImplFromJson(
          json);

  @override
  @JsonKey(name: "small")
  final CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel? small;
  @override
  @JsonKey(name: "thumbnail")
  final CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel? thumbnail;

  @override
  String toString() {
    return 'CardIdDataAttributesAvatarCardDataAttributesFormatsModel(small: $small, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImpl &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImplCopyWith<
          _$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImpl>
      get copyWith =>
          __$$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImplCopyWithImpl<
                  _$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataAttributesAvatarCardDataAttributesFormatsModel
    implements CardIdDataAttributesAvatarCardDataAttributesFormatsModel {
  const factory _CardIdDataAttributesAvatarCardDataAttributesFormatsModel(
          {@JsonKey(name: "small")
          final CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel? small,
          @JsonKey(name: "thumbnail")
          final CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel?
              thumbnail}) =
      _$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImpl;

  factory _CardIdDataAttributesAvatarCardDataAttributesFormatsModel.fromJson(
          Map<String, dynamic> json) =
      _$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImpl.fromJson;

  @override
  @JsonKey(name: "small")
  CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel? get small;
  @override
  @JsonKey(name: "thumbnail")
  CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImplCopyWith<
          _$CardIdDataAttributesAvatarCardDataAttributesFormatsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel
    _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelFromJson(
        Map<String, dynamic> json) {
  return _CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel.fromJson(
      json);
}

/// @nodoc
mixin _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel {
  @JsonKey(name: "ext")
  String? get ext => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: "hash")
  String? get hash => throw _privateConstructorUsedError;
  @JsonKey(name: "mime")
  String? get mime => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "path")
  dynamic get path => throw _privateConstructorUsedError;
  @JsonKey(name: "size")
  double? get size => throw _privateConstructorUsedError;
  @JsonKey(name: "width")
  int? get width => throw _privateConstructorUsedError;
  @JsonKey(name: "height")
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: "isUrlSigned")
  bool? get isUrlSigned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelCopyWith<
          CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelCopyWith<
    $Res> {
  factory $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelCopyWith(
          CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel value,
          $Res Function(
                  CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel)
              then) =
      _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelCopyWithImpl<
          $Res, CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "ext") String? ext,
      @JsonKey(name: "url") String? url,
      @JsonKey(name: "hash") String? hash,
      @JsonKey(name: "mime") String? mime,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "path") dynamic path,
      @JsonKey(name: "size") double? size,
      @JsonKey(name: "width") int? width,
      @JsonKey(name: "height") int? height,
      @JsonKey(name: "isUrlSigned") bool? isUrlSigned});
}

/// @nodoc
class _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelCopyWithImpl<
        $Res,
        $Val extends CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel>
    implements
        $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelCopyWith<
            $Res> {
  _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ext = freezed,
    Object? url = freezed,
    Object? hash = freezed,
    Object? mime = freezed,
    Object? name = freezed,
    Object? path = freezed,
    Object? size = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? isUrlSigned = freezed,
  }) {
    return _then(_value.copyWith(
      ext: freezed == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      mime: freezed == mime
          ? _value.mime
          : mime // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as dynamic,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      isUrlSigned: freezed == isUrlSigned
          ? _value.isUrlSigned
          : isUrlSigned // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImplCopyWith<
        $Res>
    implements
        $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelCopyWith<
            $Res> {
  factory _$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImplCopyWith(
          _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImpl value,
          $Res Function(
                  _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImpl)
              then) =
      __$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ext") String? ext,
      @JsonKey(name: "url") String? url,
      @JsonKey(name: "hash") String? hash,
      @JsonKey(name: "mime") String? mime,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "path") dynamic path,
      @JsonKey(name: "size") double? size,
      @JsonKey(name: "width") int? width,
      @JsonKey(name: "height") int? height,
      @JsonKey(name: "isUrlSigned") bool? isUrlSigned});
}

/// @nodoc
class __$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImplCopyWithImpl<
        $Res>
    extends _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelCopyWithImpl<
        $Res,
        _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImpl>
    implements
        _$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImplCopyWith<
            $Res> {
  __$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImplCopyWithImpl(
      _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImpl _value,
      $Res Function(
              _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImpl)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ext = freezed,
    Object? url = freezed,
    Object? hash = freezed,
    Object? mime = freezed,
    Object? name = freezed,
    Object? path = freezed,
    Object? size = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? isUrlSigned = freezed,
  }) {
    return _then(
        _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImpl(
      ext: freezed == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      mime: freezed == mime
          ? _value.mime
          : mime // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as dynamic,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      isUrlSigned: freezed == isUrlSigned
          ? _value.isUrlSigned
          : isUrlSigned // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImpl
    implements _CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel {
  const _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImpl(
      {@JsonKey(name: "ext") this.ext,
      @JsonKey(name: "url") this.url,
      @JsonKey(name: "hash") this.hash,
      @JsonKey(name: "mime") this.mime,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "path") this.path,
      @JsonKey(name: "size") this.size,
      @JsonKey(name: "width") this.width,
      @JsonKey(name: "height") this.height,
      @JsonKey(name: "isUrlSigned") this.isUrlSigned});

  factory _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImplFromJson(
          json);

  @override
  @JsonKey(name: "ext")
  final String? ext;
  @override
  @JsonKey(name: "url")
  final String? url;
  @override
  @JsonKey(name: "hash")
  final String? hash;
  @override
  @JsonKey(name: "mime")
  final String? mime;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "path")
  final dynamic path;
  @override
  @JsonKey(name: "size")
  final double? size;
  @override
  @JsonKey(name: "width")
  final int? width;
  @override
  @JsonKey(name: "height")
  final int? height;
  @override
  @JsonKey(name: "isUrlSigned")
  final bool? isUrlSigned;

  @override
  String toString() {
    return 'CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel(ext: $ext, url: $url, hash: $hash, mime: $mime, name: $name, path: $path, size: $size, width: $width, height: $height, isUrlSigned: $isUrlSigned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImpl &&
            (identical(other.ext, ext) || other.ext == ext) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.mime, mime) || other.mime == mime) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.isUrlSigned, isUrlSigned) ||
                other.isUrlSigned == isUrlSigned));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ext,
      url,
      hash,
      mime,
      name,
      const DeepCollectionEquality().hash(path),
      size,
      width,
      height,
      isUrlSigned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImplCopyWith<
          _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImpl>
      get copyWith =>
          __$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImplCopyWithImpl<
                  _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel
    implements CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel {
  const factory _CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel(
          {@JsonKey(name: "ext") final String? ext,
          @JsonKey(name: "url") final String? url,
          @JsonKey(name: "hash") final String? hash,
          @JsonKey(name: "mime") final String? mime,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "path") final dynamic path,
          @JsonKey(name: "size") final double? size,
          @JsonKey(name: "width") final int? width,
          @JsonKey(name: "height") final int? height,
          @JsonKey(name: "isUrlSigned") final bool? isUrlSigned}) =
      _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImpl;

  factory _CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModel.fromJson(
          Map<String, dynamic> json) =
      _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImpl
      .fromJson;

  @override
  @JsonKey(name: "ext")
  String? get ext;
  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(name: "hash")
  String? get hash;
  @override
  @JsonKey(name: "mime")
  String? get mime;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "path")
  dynamic get path;
  @override
  @JsonKey(name: "size")
  double? get size;
  @override
  @JsonKey(name: "width")
  int? get width;
  @override
  @JsonKey(name: "height")
  int? get height;
  @override
  @JsonKey(name: "isUrlSigned")
  bool? get isUrlSigned;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImplCopyWith<
          _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdDataAttributesQuizzesModel _$CardIdDataAttributesQuizzesModelFromJson(
    Map<String, dynamic> json) {
  return _CardIdDataAttributesQuizzesModel.fromJson(json);
}

/// @nodoc
mixin _$CardIdDataAttributesQuizzesModel {
  @JsonKey(name: "data")
  List<CardIdDataAttributesQuizzesDataModel>? get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataAttributesQuizzesModelCopyWith<CardIdDataAttributesQuizzesModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataAttributesQuizzesModelCopyWith<$Res> {
  factory $CardIdDataAttributesQuizzesModelCopyWith(
          CardIdDataAttributesQuizzesModel value,
          $Res Function(CardIdDataAttributesQuizzesModel) then) =
      _$CardIdDataAttributesQuizzesModelCopyWithImpl<$Res,
          CardIdDataAttributesQuizzesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data")
      List<CardIdDataAttributesQuizzesDataModel>? data});
}

/// @nodoc
class _$CardIdDataAttributesQuizzesModelCopyWithImpl<$Res,
        $Val extends CardIdDataAttributesQuizzesModel>
    implements $CardIdDataAttributesQuizzesModelCopyWith<$Res> {
  _$CardIdDataAttributesQuizzesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CardIdDataAttributesQuizzesDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardIdDataAttributesQuizzesModelImplCopyWith<$Res>
    implements $CardIdDataAttributesQuizzesModelCopyWith<$Res> {
  factory _$$CardIdDataAttributesQuizzesModelImplCopyWith(
          _$CardIdDataAttributesQuizzesModelImpl value,
          $Res Function(_$CardIdDataAttributesQuizzesModelImpl) then) =
      __$$CardIdDataAttributesQuizzesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data")
      List<CardIdDataAttributesQuizzesDataModel>? data});
}

/// @nodoc
class __$$CardIdDataAttributesQuizzesModelImplCopyWithImpl<$Res>
    extends _$CardIdDataAttributesQuizzesModelCopyWithImpl<$Res,
        _$CardIdDataAttributesQuizzesModelImpl>
    implements _$$CardIdDataAttributesQuizzesModelImplCopyWith<$Res> {
  __$$CardIdDataAttributesQuizzesModelImplCopyWithImpl(
      _$CardIdDataAttributesQuizzesModelImpl _value,
      $Res Function(_$CardIdDataAttributesQuizzesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$CardIdDataAttributesQuizzesModelImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CardIdDataAttributesQuizzesDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataAttributesQuizzesModelImpl
    implements _CardIdDataAttributesQuizzesModel {
  const _$CardIdDataAttributesQuizzesModelImpl(
      {@JsonKey(name: "data")
      final List<CardIdDataAttributesQuizzesDataModel>? data})
      : _data = data;

  factory _$CardIdDataAttributesQuizzesModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardIdDataAttributesQuizzesModelImplFromJson(json);

  final List<CardIdDataAttributesQuizzesDataModel>? _data;
  @override
  @JsonKey(name: "data")
  List<CardIdDataAttributesQuizzesDataModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CardIdDataAttributesQuizzesModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardIdDataAttributesQuizzesModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardIdDataAttributesQuizzesModelImplCopyWith<
          _$CardIdDataAttributesQuizzesModelImpl>
      get copyWith => __$$CardIdDataAttributesQuizzesModelImplCopyWithImpl<
          _$CardIdDataAttributesQuizzesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataAttributesQuizzesModelImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataAttributesQuizzesModel
    implements CardIdDataAttributesQuizzesModel {
  const factory _CardIdDataAttributesQuizzesModel(
          {@JsonKey(name: "data")
          final List<CardIdDataAttributesQuizzesDataModel>? data}) =
      _$CardIdDataAttributesQuizzesModelImpl;

  factory _CardIdDataAttributesQuizzesModel.fromJson(
          Map<String, dynamic> json) =
      _$CardIdDataAttributesQuizzesModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  List<CardIdDataAttributesQuizzesDataModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataAttributesQuizzesModelImplCopyWith<
          _$CardIdDataAttributesQuizzesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdDataAttributesQuizzesDataModel
    _$CardIdDataAttributesQuizzesDataModelFromJson(Map<String, dynamic> json) {
  return _CardIdDataAttributesQuizzesDataModel.fromJson(json);
}

/// @nodoc
mixin _$CardIdDataAttributesQuizzesDataModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "attributes")
  CardIdDataAttributesQuizzesDataAttributesModel? get attributes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataAttributesQuizzesDataModelCopyWith<
          CardIdDataAttributesQuizzesDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataAttributesQuizzesDataModelCopyWith<$Res> {
  factory $CardIdDataAttributesQuizzesDataModelCopyWith(
          CardIdDataAttributesQuizzesDataModel value,
          $Res Function(CardIdDataAttributesQuizzesDataModel) then) =
      _$CardIdDataAttributesQuizzesDataModelCopyWithImpl<$Res,
          CardIdDataAttributesQuizzesDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "attributes")
      CardIdDataAttributesQuizzesDataAttributesModel? attributes});

  $CardIdDataAttributesQuizzesDataAttributesModelCopyWith<$Res>? get attributes;
}

/// @nodoc
class _$CardIdDataAttributesQuizzesDataModelCopyWithImpl<$Res,
        $Val extends CardIdDataAttributesQuizzesDataModel>
    implements $CardIdDataAttributesQuizzesDataModelCopyWith<$Res> {
  _$CardIdDataAttributesQuizzesDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesQuizzesDataAttributesModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataAttributesQuizzesDataAttributesModelCopyWith<$Res>?
      get attributes {
    if (_value.attributes == null) {
      return null;
    }

    return $CardIdDataAttributesQuizzesDataAttributesModelCopyWith<$Res>(
        _value.attributes!, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardIdDataAttributesQuizzesDataModelImplCopyWith<$Res>
    implements $CardIdDataAttributesQuizzesDataModelCopyWith<$Res> {
  factory _$$CardIdDataAttributesQuizzesDataModelImplCopyWith(
          _$CardIdDataAttributesQuizzesDataModelImpl value,
          $Res Function(_$CardIdDataAttributesQuizzesDataModelImpl) then) =
      __$$CardIdDataAttributesQuizzesDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "attributes")
      CardIdDataAttributesQuizzesDataAttributesModel? attributes});

  @override
  $CardIdDataAttributesQuizzesDataAttributesModelCopyWith<$Res>? get attributes;
}

/// @nodoc
class __$$CardIdDataAttributesQuizzesDataModelImplCopyWithImpl<$Res>
    extends _$CardIdDataAttributesQuizzesDataModelCopyWithImpl<$Res,
        _$CardIdDataAttributesQuizzesDataModelImpl>
    implements _$$CardIdDataAttributesQuizzesDataModelImplCopyWith<$Res> {
  __$$CardIdDataAttributesQuizzesDataModelImplCopyWithImpl(
      _$CardIdDataAttributesQuizzesDataModelImpl _value,
      $Res Function(_$CardIdDataAttributesQuizzesDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$CardIdDataAttributesQuizzesDataModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesQuizzesDataAttributesModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataAttributesQuizzesDataModelImpl
    implements _CardIdDataAttributesQuizzesDataModel {
  const _$CardIdDataAttributesQuizzesDataModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "attributes") this.attributes});

  factory _$CardIdDataAttributesQuizzesDataModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardIdDataAttributesQuizzesDataModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "attributes")
  final CardIdDataAttributesQuizzesDataAttributesModel? attributes;

  @override
  String toString() {
    return 'CardIdDataAttributesQuizzesDataModel(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardIdDataAttributesQuizzesDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardIdDataAttributesQuizzesDataModelImplCopyWith<
          _$CardIdDataAttributesQuizzesDataModelImpl>
      get copyWith => __$$CardIdDataAttributesQuizzesDataModelImplCopyWithImpl<
          _$CardIdDataAttributesQuizzesDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataAttributesQuizzesDataModelImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataAttributesQuizzesDataModel
    implements CardIdDataAttributesQuizzesDataModel {
  const factory _CardIdDataAttributesQuizzesDataModel(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "attributes")
          final CardIdDataAttributesQuizzesDataAttributesModel? attributes}) =
      _$CardIdDataAttributesQuizzesDataModelImpl;

  factory _CardIdDataAttributesQuizzesDataModel.fromJson(
          Map<String, dynamic> json) =
      _$CardIdDataAttributesQuizzesDataModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "attributes")
  CardIdDataAttributesQuizzesDataAttributesModel? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataAttributesQuizzesDataModelImplCopyWith<
          _$CardIdDataAttributesQuizzesDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdDataAttributesQuizzesDataAttributesModel
    _$CardIdDataAttributesQuizzesDataAttributesModelFromJson(
        Map<String, dynamic> json) {
  return _CardIdDataAttributesQuizzesDataAttributesModel.fromJson(json);
}

/// @nodoc
mixin _$CardIdDataAttributesQuizzesDataAttributesModel {
  @JsonKey(name: "quiz_question")
  String? get quizQuestion => throw _privateConstructorUsedError;
  @JsonKey(name: "option_one")
  String? get optionOne => throw _privateConstructorUsedError;
  @JsonKey(name: "option_two")
  String? get optionTwo => throw _privateConstructorUsedError;
  @JsonKey(name: "option_three")
  String? get optionThree => throw _privateConstructorUsedError;
  @JsonKey(name: "option_four")
  String? get optionFour => throw _privateConstructorUsedError;
  @JsonKey(name: "correct_option")
  String? get correctOption => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "publishedAt")
  DateTime? get publishedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "score")
  int? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataAttributesQuizzesDataAttributesModelCopyWith<
          CardIdDataAttributesQuizzesDataAttributesModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataAttributesQuizzesDataAttributesModelCopyWith<$Res> {
  factory $CardIdDataAttributesQuizzesDataAttributesModelCopyWith(
          CardIdDataAttributesQuizzesDataAttributesModel value,
          $Res Function(CardIdDataAttributesQuizzesDataAttributesModel) then) =
      _$CardIdDataAttributesQuizzesDataAttributesModelCopyWithImpl<$Res,
          CardIdDataAttributesQuizzesDataAttributesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "quiz_question") String? quizQuestion,
      @JsonKey(name: "option_one") String? optionOne,
      @JsonKey(name: "option_two") String? optionTwo,
      @JsonKey(name: "option_three") String? optionThree,
      @JsonKey(name: "option_four") String? optionFour,
      @JsonKey(name: "correct_option") String? correctOption,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "publishedAt") DateTime? publishedAt,
      @JsonKey(name: "score") int? score});
}

/// @nodoc
class _$CardIdDataAttributesQuizzesDataAttributesModelCopyWithImpl<$Res,
        $Val extends CardIdDataAttributesQuizzesDataAttributesModel>
    implements $CardIdDataAttributesQuizzesDataAttributesModelCopyWith<$Res> {
  _$CardIdDataAttributesQuizzesDataAttributesModelCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizQuestion = freezed,
    Object? optionOne = freezed,
    Object? optionTwo = freezed,
    Object? optionThree = freezed,
    Object? optionFour = freezed,
    Object? correctOption = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? publishedAt = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      quizQuestion: freezed == quizQuestion
          ? _value.quizQuestion
          : quizQuestion // ignore: cast_nullable_to_non_nullable
              as String?,
      optionOne: freezed == optionOne
          ? _value.optionOne
          : optionOne // ignore: cast_nullable_to_non_nullable
              as String?,
      optionTwo: freezed == optionTwo
          ? _value.optionTwo
          : optionTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      optionThree: freezed == optionThree
          ? _value.optionThree
          : optionThree // ignore: cast_nullable_to_non_nullable
              as String?,
      optionFour: freezed == optionFour
          ? _value.optionFour
          : optionFour // ignore: cast_nullable_to_non_nullable
              as String?,
      correctOption: freezed == correctOption
          ? _value.correctOption
          : correctOption // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardIdDataAttributesQuizzesDataAttributesModelImplCopyWith<
        $Res>
    implements $CardIdDataAttributesQuizzesDataAttributesModelCopyWith<$Res> {
  factory _$$CardIdDataAttributesQuizzesDataAttributesModelImplCopyWith(
          _$CardIdDataAttributesQuizzesDataAttributesModelImpl value,
          $Res Function(_$CardIdDataAttributesQuizzesDataAttributesModelImpl)
              then) =
      __$$CardIdDataAttributesQuizzesDataAttributesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "quiz_question") String? quizQuestion,
      @JsonKey(name: "option_one") String? optionOne,
      @JsonKey(name: "option_two") String? optionTwo,
      @JsonKey(name: "option_three") String? optionThree,
      @JsonKey(name: "option_four") String? optionFour,
      @JsonKey(name: "correct_option") String? correctOption,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "publishedAt") DateTime? publishedAt,
      @JsonKey(name: "score") int? score});
}

/// @nodoc
class __$$CardIdDataAttributesQuizzesDataAttributesModelImplCopyWithImpl<$Res>
    extends _$CardIdDataAttributesQuizzesDataAttributesModelCopyWithImpl<$Res,
        _$CardIdDataAttributesQuizzesDataAttributesModelImpl>
    implements
        _$$CardIdDataAttributesQuizzesDataAttributesModelImplCopyWith<$Res> {
  __$$CardIdDataAttributesQuizzesDataAttributesModelImplCopyWithImpl(
      _$CardIdDataAttributesQuizzesDataAttributesModelImpl _value,
      $Res Function(_$CardIdDataAttributesQuizzesDataAttributesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizQuestion = freezed,
    Object? optionOne = freezed,
    Object? optionTwo = freezed,
    Object? optionThree = freezed,
    Object? optionFour = freezed,
    Object? correctOption = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? publishedAt = freezed,
    Object? score = freezed,
  }) {
    return _then(_$CardIdDataAttributesQuizzesDataAttributesModelImpl(
      quizQuestion: freezed == quizQuestion
          ? _value.quizQuestion
          : quizQuestion // ignore: cast_nullable_to_non_nullable
              as String?,
      optionOne: freezed == optionOne
          ? _value.optionOne
          : optionOne // ignore: cast_nullable_to_non_nullable
              as String?,
      optionTwo: freezed == optionTwo
          ? _value.optionTwo
          : optionTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      optionThree: freezed == optionThree
          ? _value.optionThree
          : optionThree // ignore: cast_nullable_to_non_nullable
              as String?,
      optionFour: freezed == optionFour
          ? _value.optionFour
          : optionFour // ignore: cast_nullable_to_non_nullable
              as String?,
      correctOption: freezed == correctOption
          ? _value.correctOption
          : correctOption // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataAttributesQuizzesDataAttributesModelImpl
    implements _CardIdDataAttributesQuizzesDataAttributesModel {
  const _$CardIdDataAttributesQuizzesDataAttributesModelImpl(
      {@JsonKey(name: "quiz_question") this.quizQuestion,
      @JsonKey(name: "option_one") this.optionOne,
      @JsonKey(name: "option_two") this.optionTwo,
      @JsonKey(name: "option_three") this.optionThree,
      @JsonKey(name: "option_four") this.optionFour,
      @JsonKey(name: "correct_option") this.correctOption,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "publishedAt") this.publishedAt,
      @JsonKey(name: "score") this.score});

  factory _$CardIdDataAttributesQuizzesDataAttributesModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardIdDataAttributesQuizzesDataAttributesModelImplFromJson(json);

  @override
  @JsonKey(name: "quiz_question")
  final String? quizQuestion;
  @override
  @JsonKey(name: "option_one")
  final String? optionOne;
  @override
  @JsonKey(name: "option_two")
  final String? optionTwo;
  @override
  @JsonKey(name: "option_three")
  final String? optionThree;
  @override
  @JsonKey(name: "option_four")
  final String? optionFour;
  @override
  @JsonKey(name: "correct_option")
  final String? correctOption;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "publishedAt")
  final DateTime? publishedAt;
  @override
  @JsonKey(name: "score")
  final int? score;

  @override
  String toString() {
    return 'CardIdDataAttributesQuizzesDataAttributesModel(quizQuestion: $quizQuestion, optionOne: $optionOne, optionTwo: $optionTwo, optionThree: $optionThree, optionFour: $optionFour, correctOption: $correctOption, createdAt: $createdAt, updatedAt: $updatedAt, publishedAt: $publishedAt, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardIdDataAttributesQuizzesDataAttributesModelImpl &&
            (identical(other.quizQuestion, quizQuestion) ||
                other.quizQuestion == quizQuestion) &&
            (identical(other.optionOne, optionOne) ||
                other.optionOne == optionOne) &&
            (identical(other.optionTwo, optionTwo) ||
                other.optionTwo == optionTwo) &&
            (identical(other.optionThree, optionThree) ||
                other.optionThree == optionThree) &&
            (identical(other.optionFour, optionFour) ||
                other.optionFour == optionFour) &&
            (identical(other.correctOption, correctOption) ||
                other.correctOption == correctOption) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      quizQuestion,
      optionOne,
      optionTwo,
      optionThree,
      optionFour,
      correctOption,
      createdAt,
      updatedAt,
      publishedAt,
      score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardIdDataAttributesQuizzesDataAttributesModelImplCopyWith<
          _$CardIdDataAttributesQuizzesDataAttributesModelImpl>
      get copyWith =>
          __$$CardIdDataAttributesQuizzesDataAttributesModelImplCopyWithImpl<
                  _$CardIdDataAttributesQuizzesDataAttributesModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataAttributesQuizzesDataAttributesModelImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataAttributesQuizzesDataAttributesModel
    implements CardIdDataAttributesQuizzesDataAttributesModel {
  const factory _CardIdDataAttributesQuizzesDataAttributesModel(
          {@JsonKey(name: "quiz_question") final String? quizQuestion,
          @JsonKey(name: "option_one") final String? optionOne,
          @JsonKey(name: "option_two") final String? optionTwo,
          @JsonKey(name: "option_three") final String? optionThree,
          @JsonKey(name: "option_four") final String? optionFour,
          @JsonKey(name: "correct_option") final String? correctOption,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt,
          @JsonKey(name: "publishedAt") final DateTime? publishedAt,
          @JsonKey(name: "score") final int? score}) =
      _$CardIdDataAttributesQuizzesDataAttributesModelImpl;

  factory _CardIdDataAttributesQuizzesDataAttributesModel.fromJson(
          Map<String, dynamic> json) =
      _$CardIdDataAttributesQuizzesDataAttributesModelImpl.fromJson;

  @override
  @JsonKey(name: "quiz_question")
  String? get quizQuestion;
  @override
  @JsonKey(name: "option_one")
  String? get optionOne;
  @override
  @JsonKey(name: "option_two")
  String? get optionTwo;
  @override
  @JsonKey(name: "option_three")
  String? get optionThree;
  @override
  @JsonKey(name: "option_four")
  String? get optionFour;
  @override
  @JsonKey(name: "correct_option")
  String? get correctOption;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "publishedAt")
  DateTime? get publishedAt;
  @override
  @JsonKey(name: "score")
  int? get score;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataAttributesQuizzesDataAttributesModelImplCopyWith<
          _$CardIdDataAttributesQuizzesDataAttributesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdDataAttributesUsersModel _$CardIdDataAttributesUsersModelFromJson(
    Map<String, dynamic> json) {
  return _CardIdDataAttributesUsersModel.fromJson(json);
}

/// @nodoc
mixin _$CardIdDataAttributesUsersModel {
  @JsonKey(name: "data")
  List<CardIdDataAttributesUsersDataModel>? get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataAttributesUsersModelCopyWith<CardIdDataAttributesUsersModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataAttributesUsersModelCopyWith<$Res> {
  factory $CardIdDataAttributesUsersModelCopyWith(
          CardIdDataAttributesUsersModel value,
          $Res Function(CardIdDataAttributesUsersModel) then) =
      _$CardIdDataAttributesUsersModelCopyWithImpl<$Res,
          CardIdDataAttributesUsersModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<CardIdDataAttributesUsersDataModel>? data});
}

/// @nodoc
class _$CardIdDataAttributesUsersModelCopyWithImpl<$Res,
        $Val extends CardIdDataAttributesUsersModel>
    implements $CardIdDataAttributesUsersModelCopyWith<$Res> {
  _$CardIdDataAttributesUsersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CardIdDataAttributesUsersDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardIdDataAttributesUsersModelImplCopyWith<$Res>
    implements $CardIdDataAttributesUsersModelCopyWith<$Res> {
  factory _$$CardIdDataAttributesUsersModelImplCopyWith(
          _$CardIdDataAttributesUsersModelImpl value,
          $Res Function(_$CardIdDataAttributesUsersModelImpl) then) =
      __$$CardIdDataAttributesUsersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<CardIdDataAttributesUsersDataModel>? data});
}

/// @nodoc
class __$$CardIdDataAttributesUsersModelImplCopyWithImpl<$Res>
    extends _$CardIdDataAttributesUsersModelCopyWithImpl<$Res,
        _$CardIdDataAttributesUsersModelImpl>
    implements _$$CardIdDataAttributesUsersModelImplCopyWith<$Res> {
  __$$CardIdDataAttributesUsersModelImplCopyWithImpl(
      _$CardIdDataAttributesUsersModelImpl _value,
      $Res Function(_$CardIdDataAttributesUsersModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$CardIdDataAttributesUsersModelImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CardIdDataAttributesUsersDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataAttributesUsersModelImpl
    implements _CardIdDataAttributesUsersModel {
  const _$CardIdDataAttributesUsersModelImpl(
      {@JsonKey(name: "data")
      final List<CardIdDataAttributesUsersDataModel>? data})
      : _data = data;

  factory _$CardIdDataAttributesUsersModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardIdDataAttributesUsersModelImplFromJson(json);

  final List<CardIdDataAttributesUsersDataModel>? _data;
  @override
  @JsonKey(name: "data")
  List<CardIdDataAttributesUsersDataModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CardIdDataAttributesUsersModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardIdDataAttributesUsersModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardIdDataAttributesUsersModelImplCopyWith<
          _$CardIdDataAttributesUsersModelImpl>
      get copyWith => __$$CardIdDataAttributesUsersModelImplCopyWithImpl<
          _$CardIdDataAttributesUsersModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataAttributesUsersModelImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataAttributesUsersModel
    implements CardIdDataAttributesUsersModel {
  const factory _CardIdDataAttributesUsersModel(
          {@JsonKey(name: "data")
          final List<CardIdDataAttributesUsersDataModel>? data}) =
      _$CardIdDataAttributesUsersModelImpl;

  factory _CardIdDataAttributesUsersModel.fromJson(Map<String, dynamic> json) =
      _$CardIdDataAttributesUsersModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  List<CardIdDataAttributesUsersDataModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataAttributesUsersModelImplCopyWith<
          _$CardIdDataAttributesUsersModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdDataAttributesUsersDataModel _$CardIdDataAttributesUsersDataModelFromJson(
    Map<String, dynamic> json) {
  return _CardIdDataAttributesUsersDataModel.fromJson(json);
}

/// @nodoc
mixin _$CardIdDataAttributesUsersDataModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "attributes")
  CardIdDataAttributesUsersDataAttributesModel? get attributes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataAttributesUsersDataModelCopyWith<
          CardIdDataAttributesUsersDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataAttributesUsersDataModelCopyWith<$Res> {
  factory $CardIdDataAttributesUsersDataModelCopyWith(
          CardIdDataAttributesUsersDataModel value,
          $Res Function(CardIdDataAttributesUsersDataModel) then) =
      _$CardIdDataAttributesUsersDataModelCopyWithImpl<$Res,
          CardIdDataAttributesUsersDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "attributes")
      CardIdDataAttributesUsersDataAttributesModel? attributes});

  $CardIdDataAttributesUsersDataAttributesModelCopyWith<$Res>? get attributes;
}

/// @nodoc
class _$CardIdDataAttributesUsersDataModelCopyWithImpl<$Res,
        $Val extends CardIdDataAttributesUsersDataModel>
    implements $CardIdDataAttributesUsersDataModelCopyWith<$Res> {
  _$CardIdDataAttributesUsersDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesUsersDataAttributesModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataAttributesUsersDataAttributesModelCopyWith<$Res>? get attributes {
    if (_value.attributes == null) {
      return null;
    }

    return $CardIdDataAttributesUsersDataAttributesModelCopyWith<$Res>(
        _value.attributes!, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardIdDataAttributesUsersDataModelImplCopyWith<$Res>
    implements $CardIdDataAttributesUsersDataModelCopyWith<$Res> {
  factory _$$CardIdDataAttributesUsersDataModelImplCopyWith(
          _$CardIdDataAttributesUsersDataModelImpl value,
          $Res Function(_$CardIdDataAttributesUsersDataModelImpl) then) =
      __$$CardIdDataAttributesUsersDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "attributes")
      CardIdDataAttributesUsersDataAttributesModel? attributes});

  @override
  $CardIdDataAttributesUsersDataAttributesModelCopyWith<$Res>? get attributes;
}

/// @nodoc
class __$$CardIdDataAttributesUsersDataModelImplCopyWithImpl<$Res>
    extends _$CardIdDataAttributesUsersDataModelCopyWithImpl<$Res,
        _$CardIdDataAttributesUsersDataModelImpl>
    implements _$$CardIdDataAttributesUsersDataModelImplCopyWith<$Res> {
  __$$CardIdDataAttributesUsersDataModelImplCopyWithImpl(
      _$CardIdDataAttributesUsersDataModelImpl _value,
      $Res Function(_$CardIdDataAttributesUsersDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$CardIdDataAttributesUsersDataModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesUsersDataAttributesModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataAttributesUsersDataModelImpl
    implements _CardIdDataAttributesUsersDataModel {
  const _$CardIdDataAttributesUsersDataModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "attributes") this.attributes});

  factory _$CardIdDataAttributesUsersDataModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardIdDataAttributesUsersDataModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "attributes")
  final CardIdDataAttributesUsersDataAttributesModel? attributes;

  @override
  String toString() {
    return 'CardIdDataAttributesUsersDataModel(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardIdDataAttributesUsersDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardIdDataAttributesUsersDataModelImplCopyWith<
          _$CardIdDataAttributesUsersDataModelImpl>
      get copyWith => __$$CardIdDataAttributesUsersDataModelImplCopyWithImpl<
          _$CardIdDataAttributesUsersDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataAttributesUsersDataModelImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataAttributesUsersDataModel
    implements CardIdDataAttributesUsersDataModel {
  const factory _CardIdDataAttributesUsersDataModel(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "attributes")
          final CardIdDataAttributesUsersDataAttributesModel? attributes}) =
      _$CardIdDataAttributesUsersDataModelImpl;

  factory _CardIdDataAttributesUsersDataModel.fromJson(
          Map<String, dynamic> json) =
      _$CardIdDataAttributesUsersDataModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "attributes")
  CardIdDataAttributesUsersDataAttributesModel? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataAttributesUsersDataModelImplCopyWith<
          _$CardIdDataAttributesUsersDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdDataAttributesUsersDataAttributesModel
    _$CardIdDataAttributesUsersDataAttributesModelFromJson(
        Map<String, dynamic> json) {
  return _CardIdDataAttributesUsersDataAttributesModel.fromJson(json);
}

/// @nodoc
mixin _$CardIdDataAttributesUsersDataAttributesModel {
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "provider")
  String? get provider => throw _privateConstructorUsedError;
  @JsonKey(name: "confirmed")
  bool? get confirmed => throw _privateConstructorUsedError;
  @JsonKey(name: "blocked")
  bool? get blocked => throw _privateConstructorUsedError;
  @JsonKey(name: "collection_card")
  int? get collectionCard => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "scores")
  int? get scores => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataAttributesUsersDataAttributesModelCopyWith<
          CardIdDataAttributesUsersDataAttributesModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataAttributesUsersDataAttributesModelCopyWith<$Res> {
  factory $CardIdDataAttributesUsersDataAttributesModelCopyWith(
          CardIdDataAttributesUsersDataAttributesModel value,
          $Res Function(CardIdDataAttributesUsersDataAttributesModel) then) =
      _$CardIdDataAttributesUsersDataAttributesModelCopyWithImpl<$Res,
          CardIdDataAttributesUsersDataAttributesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "username") String? username,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "provider") String? provider,
      @JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "blocked") bool? blocked,
      @JsonKey(name: "collection_card") int? collectionCard,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "scores") int? scores});
}

/// @nodoc
class _$CardIdDataAttributesUsersDataAttributesModelCopyWithImpl<$Res,
        $Val extends CardIdDataAttributesUsersDataAttributesModel>
    implements $CardIdDataAttributesUsersDataAttributesModelCopyWith<$Res> {
  _$CardIdDataAttributesUsersDataAttributesModelCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? provider = freezed,
    Object? confirmed = freezed,
    Object? blocked = freezed,
    Object? collectionCard = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? scores = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmed: freezed == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      blocked: freezed == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      collectionCard: freezed == collectionCard
          ? _value.collectionCard
          : collectionCard // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scores: freezed == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardIdDataAttributesUsersDataAttributesModelImplCopyWith<$Res>
    implements $CardIdDataAttributesUsersDataAttributesModelCopyWith<$Res> {
  factory _$$CardIdDataAttributesUsersDataAttributesModelImplCopyWith(
          _$CardIdDataAttributesUsersDataAttributesModelImpl value,
          $Res Function(_$CardIdDataAttributesUsersDataAttributesModelImpl)
              then) =
      __$$CardIdDataAttributesUsersDataAttributesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "username") String? username,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "provider") String? provider,
      @JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "blocked") bool? blocked,
      @JsonKey(name: "collection_card") int? collectionCard,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "scores") int? scores});
}

/// @nodoc
class __$$CardIdDataAttributesUsersDataAttributesModelImplCopyWithImpl<$Res>
    extends _$CardIdDataAttributesUsersDataAttributesModelCopyWithImpl<$Res,
        _$CardIdDataAttributesUsersDataAttributesModelImpl>
    implements
        _$$CardIdDataAttributesUsersDataAttributesModelImplCopyWith<$Res> {
  __$$CardIdDataAttributesUsersDataAttributesModelImplCopyWithImpl(
      _$CardIdDataAttributesUsersDataAttributesModelImpl _value,
      $Res Function(_$CardIdDataAttributesUsersDataAttributesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? provider = freezed,
    Object? confirmed = freezed,
    Object? blocked = freezed,
    Object? collectionCard = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? scores = freezed,
  }) {
    return _then(_$CardIdDataAttributesUsersDataAttributesModelImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmed: freezed == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      blocked: freezed == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      collectionCard: freezed == collectionCard
          ? _value.collectionCard
          : collectionCard // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scores: freezed == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataAttributesUsersDataAttributesModelImpl
    implements _CardIdDataAttributesUsersDataAttributesModel {
  const _$CardIdDataAttributesUsersDataAttributesModelImpl(
      {@JsonKey(name: "username") this.username,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "provider") this.provider,
      @JsonKey(name: "confirmed") this.confirmed,
      @JsonKey(name: "blocked") this.blocked,
      @JsonKey(name: "collection_card") this.collectionCard,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "scores") this.scores});

  factory _$CardIdDataAttributesUsersDataAttributesModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardIdDataAttributesUsersDataAttributesModelImplFromJson(json);

  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "provider")
  final String? provider;
  @override
  @JsonKey(name: "confirmed")
  final bool? confirmed;
  @override
  @JsonKey(name: "blocked")
  final bool? blocked;
  @override
  @JsonKey(name: "collection_card")
  final int? collectionCard;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "scores")
  final int? scores;

  @override
  String toString() {
    return 'CardIdDataAttributesUsersDataAttributesModel(username: $username, email: $email, provider: $provider, confirmed: $confirmed, blocked: $blocked, collectionCard: $collectionCard, createdAt: $createdAt, updatedAt: $updatedAt, scores: $scores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardIdDataAttributesUsersDataAttributesModelImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.confirmed, confirmed) ||
                other.confirmed == confirmed) &&
            (identical(other.blocked, blocked) || other.blocked == blocked) &&
            (identical(other.collectionCard, collectionCard) ||
                other.collectionCard == collectionCard) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.scores, scores) || other.scores == scores));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, email, provider,
      confirmed, blocked, collectionCard, createdAt, updatedAt, scores);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardIdDataAttributesUsersDataAttributesModelImplCopyWith<
          _$CardIdDataAttributesUsersDataAttributesModelImpl>
      get copyWith =>
          __$$CardIdDataAttributesUsersDataAttributesModelImplCopyWithImpl<
                  _$CardIdDataAttributesUsersDataAttributesModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataAttributesUsersDataAttributesModelImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataAttributesUsersDataAttributesModel
    implements CardIdDataAttributesUsersDataAttributesModel {
  const factory _CardIdDataAttributesUsersDataAttributesModel(
          {@JsonKey(name: "username") final String? username,
          @JsonKey(name: "email") final String? email,
          @JsonKey(name: "provider") final String? provider,
          @JsonKey(name: "confirmed") final bool? confirmed,
          @JsonKey(name: "blocked") final bool? blocked,
          @JsonKey(name: "collection_card") final int? collectionCard,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt,
          @JsonKey(name: "scores") final int? scores}) =
      _$CardIdDataAttributesUsersDataAttributesModelImpl;

  factory _CardIdDataAttributesUsersDataAttributesModel.fromJson(
          Map<String, dynamic> json) =
      _$CardIdDataAttributesUsersDataAttributesModelImpl.fromJson;

  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "provider")
  String? get provider;
  @override
  @JsonKey(name: "confirmed")
  bool? get confirmed;
  @override
  @JsonKey(name: "blocked")
  bool? get blocked;
  @override
  @JsonKey(name: "collection_card")
  int? get collectionCard;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "scores")
  int? get scores;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataAttributesUsersDataAttributesModelImplCopyWith<
          _$CardIdDataAttributesUsersDataAttributesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdMetaModel _$CardIdMetaModelFromJson(Map<String, dynamic> json) {
  return _CardIdMetaModel.fromJson(json);
}

/// @nodoc
mixin _$CardIdMetaModel {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdMetaModelCopyWith<$Res> {
  factory $CardIdMetaModelCopyWith(
          CardIdMetaModel value, $Res Function(CardIdMetaModel) then) =
      _$CardIdMetaModelCopyWithImpl<$Res, CardIdMetaModel>;
}

/// @nodoc
class _$CardIdMetaModelCopyWithImpl<$Res, $Val extends CardIdMetaModel>
    implements $CardIdMetaModelCopyWith<$Res> {
  _$CardIdMetaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CardIdMetaModelImplCopyWith<$Res> {
  factory _$$CardIdMetaModelImplCopyWith(_$CardIdMetaModelImpl value,
          $Res Function(_$CardIdMetaModelImpl) then) =
      __$$CardIdMetaModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CardIdMetaModelImplCopyWithImpl<$Res>
    extends _$CardIdMetaModelCopyWithImpl<$Res, _$CardIdMetaModelImpl>
    implements _$$CardIdMetaModelImplCopyWith<$Res> {
  __$$CardIdMetaModelImplCopyWithImpl(
      _$CardIdMetaModelImpl _value, $Res Function(_$CardIdMetaModelImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$CardIdMetaModelImpl implements _CardIdMetaModel {
  const _$CardIdMetaModelImpl();

  factory _$CardIdMetaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardIdMetaModelImplFromJson(json);

  @override
  String toString() {
    return 'CardIdMetaModel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CardIdMetaModelImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdMetaModelImplToJson(
      this,
    );
  }
}

abstract class _CardIdMetaModel implements CardIdMetaModel {
  const factory _CardIdMetaModel() = _$CardIdMetaModelImpl;

  factory _CardIdMetaModel.fromJson(Map<String, dynamic> json) =
      _$CardIdMetaModelImpl.fromJson;
}
