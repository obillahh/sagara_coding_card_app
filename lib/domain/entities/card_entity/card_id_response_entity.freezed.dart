// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_id_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CardIdResponseEntity _$CardIdResponseEntityFromJson(Map<String, dynamic> json) {
  return _CardIdResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$CardIdResponseEntity {
  @JsonKey(name: "data")
  CardIdDataEntity get data => throw _privateConstructorUsedError;
  @JsonKey(name: "meta")
  CardIdMetaEntity get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdResponseEntityCopyWith<CardIdResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdResponseEntityCopyWith<$Res> {
  factory $CardIdResponseEntityCopyWith(CardIdResponseEntity value,
          $Res Function(CardIdResponseEntity) then) =
      _$CardIdResponseEntityCopyWithImpl<$Res, CardIdResponseEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") CardIdDataEntity data,
      @JsonKey(name: "meta") CardIdMetaEntity meta});

  $CardIdDataEntityCopyWith<$Res> get data;
  $CardIdMetaEntityCopyWith<$Res> get meta;
}

/// @nodoc
class _$CardIdResponseEntityCopyWithImpl<$Res,
        $Val extends CardIdResponseEntity>
    implements $CardIdResponseEntityCopyWith<$Res> {
  _$CardIdResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CardIdDataEntity,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as CardIdMetaEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataEntityCopyWith<$Res> get data {
    return $CardIdDataEntityCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdMetaEntityCopyWith<$Res> get meta {
    return $CardIdMetaEntityCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardIdResponseEntityImplCopyWith<$Res>
    implements $CardIdResponseEntityCopyWith<$Res> {
  factory _$$CardIdResponseEntityImplCopyWith(_$CardIdResponseEntityImpl value,
          $Res Function(_$CardIdResponseEntityImpl) then) =
      __$$CardIdResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") CardIdDataEntity data,
      @JsonKey(name: "meta") CardIdMetaEntity meta});

  @override
  $CardIdDataEntityCopyWith<$Res> get data;
  @override
  $CardIdMetaEntityCopyWith<$Res> get meta;
}

/// @nodoc
class __$$CardIdResponseEntityImplCopyWithImpl<$Res>
    extends _$CardIdResponseEntityCopyWithImpl<$Res, _$CardIdResponseEntityImpl>
    implements _$$CardIdResponseEntityImplCopyWith<$Res> {
  __$$CardIdResponseEntityImplCopyWithImpl(_$CardIdResponseEntityImpl _value,
      $Res Function(_$CardIdResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_$CardIdResponseEntityImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CardIdDataEntity,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as CardIdMetaEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdResponseEntityImpl implements _CardIdResponseEntity {
  const _$CardIdResponseEntityImpl(
      {@JsonKey(name: "data") required this.data,
      @JsonKey(name: "meta") required this.meta});

  factory _$CardIdResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardIdResponseEntityImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final CardIdDataEntity data;
  @override
  @JsonKey(name: "meta")
  final CardIdMetaEntity meta;

  @override
  String toString() {
    return 'CardIdResponseEntity(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardIdResponseEntityImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardIdResponseEntityImplCopyWith<_$CardIdResponseEntityImpl>
      get copyWith =>
          __$$CardIdResponseEntityImplCopyWithImpl<_$CardIdResponseEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _CardIdResponseEntity implements CardIdResponseEntity {
  const factory _CardIdResponseEntity(
          {@JsonKey(name: "data") required final CardIdDataEntity data,
          @JsonKey(name: "meta") required final CardIdMetaEntity meta}) =
      _$CardIdResponseEntityImpl;

  factory _CardIdResponseEntity.fromJson(Map<String, dynamic> json) =
      _$CardIdResponseEntityImpl.fromJson;

  @override
  @JsonKey(name: "data")
  CardIdDataEntity get data;
  @override
  @JsonKey(name: "meta")
  CardIdMetaEntity get meta;
  @override
  @JsonKey(ignore: true)
  _$$CardIdResponseEntityImplCopyWith<_$CardIdResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdDataEntity _$CardIdDataEntityFromJson(Map<String, dynamic> json) {
  return _CardIdDataEntity.fromJson(json);
}

/// @nodoc
mixin _$CardIdDataEntity {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "attributes")
  CardIdDataAttributesEntity get attributes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataEntityCopyWith<CardIdDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataEntityCopyWith<$Res> {
  factory $CardIdDataEntityCopyWith(
          CardIdDataEntity value, $Res Function(CardIdDataEntity) then) =
      _$CardIdDataEntityCopyWithImpl<$Res, CardIdDataEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "attributes") CardIdDataAttributesEntity attributes});

  $CardIdDataAttributesEntityCopyWith<$Res> get attributes;
}

/// @nodoc
class _$CardIdDataEntityCopyWithImpl<$Res, $Val extends CardIdDataEntity>
    implements $CardIdDataEntityCopyWith<$Res> {
  _$CardIdDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataAttributesEntityCopyWith<$Res> get attributes {
    return $CardIdDataAttributesEntityCopyWith<$Res>(_value.attributes,
        (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardIdDataEntityImplCopyWith<$Res>
    implements $CardIdDataEntityCopyWith<$Res> {
  factory _$$CardIdDataEntityImplCopyWith(_$CardIdDataEntityImpl value,
          $Res Function(_$CardIdDataEntityImpl) then) =
      __$$CardIdDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "attributes") CardIdDataAttributesEntity attributes});

  @override
  $CardIdDataAttributesEntityCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$CardIdDataEntityImplCopyWithImpl<$Res>
    extends _$CardIdDataEntityCopyWithImpl<$Res, _$CardIdDataEntityImpl>
    implements _$$CardIdDataEntityImplCopyWith<$Res> {
  __$$CardIdDataEntityImplCopyWithImpl(_$CardIdDataEntityImpl _value,
      $Res Function(_$CardIdDataEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_$CardIdDataEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataEntityImpl implements _CardIdDataEntity {
  const _$CardIdDataEntityImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "attributes") required this.attributes});

  factory _$CardIdDataEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardIdDataEntityImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "attributes")
  final CardIdDataAttributesEntity attributes;

  @override
  String toString() {
    return 'CardIdDataEntity(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardIdDataEntityImpl &&
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
  _$$CardIdDataEntityImplCopyWith<_$CardIdDataEntityImpl> get copyWith =>
      __$$CardIdDataEntityImplCopyWithImpl<_$CardIdDataEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataEntityImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataEntity implements CardIdDataEntity {
  const factory _CardIdDataEntity(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "attributes")
          required final CardIdDataAttributesEntity attributes}) =
      _$CardIdDataEntityImpl;

  factory _CardIdDataEntity.fromJson(Map<String, dynamic> json) =
      _$CardIdDataEntityImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "attributes")
  CardIdDataAttributesEntity get attributes;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataEntityImplCopyWith<_$CardIdDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CardIdDataAttributesEntity _$CardIdDataAttributesEntityFromJson(
    Map<String, dynamic> json) {
  return _CardIdDataAttributesEntity.fromJson(json);
}

/// @nodoc
mixin _$CardIdDataAttributesEntity {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  String get role => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "level")
  String get level => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "publishedAt")
  DateTime get publishedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar_card")
  CardIdDataAttributesAvatarCardEntity get avatarCard =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "quizzes")
  CardIdDataAttributesQuizzesEntity get quizzes =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "users")
  CardIdDataAttributesUsersEntity get users =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataAttributesEntityCopyWith<CardIdDataAttributesEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataAttributesEntityCopyWith<$Res> {
  factory $CardIdDataAttributesEntityCopyWith(CardIdDataAttributesEntity value,
          $Res Function(CardIdDataAttributesEntity) then) =
      _$CardIdDataAttributesEntityCopyWithImpl<$Res,
          CardIdDataAttributesEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "role") String role,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "level") String level,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "publishedAt") DateTime publishedAt,
      @JsonKey(name: "avatar_card")
      CardIdDataAttributesAvatarCardEntity avatarCard,
      @JsonKey(name: "quizzes") CardIdDataAttributesQuizzesEntity quizzes,
      @JsonKey(name: "users") CardIdDataAttributesUsersEntity users});

  $CardIdDataAttributesAvatarCardEntityCopyWith<$Res> get avatarCard;
  $CardIdDataAttributesQuizzesEntityCopyWith<$Res> get quizzes;
  $CardIdDataAttributesUsersEntityCopyWith<$Res> get users;
}

/// @nodoc
class _$CardIdDataAttributesEntityCopyWithImpl<$Res,
        $Val extends CardIdDataAttributesEntity>
    implements $CardIdDataAttributesEntityCopyWith<$Res> {
  _$CardIdDataAttributesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? role = null,
    Object? description = null,
    Object? level = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? publishedAt = null,
    Object? avatarCard = null,
    Object? quizzes = null,
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      avatarCard: null == avatarCard
          ? _value.avatarCard
          : avatarCard // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesAvatarCardEntity,
      quizzes: null == quizzes
          ? _value.quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesQuizzesEntity,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesUsersEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataAttributesAvatarCardEntityCopyWith<$Res> get avatarCard {
    return $CardIdDataAttributesAvatarCardEntityCopyWith<$Res>(
        _value.avatarCard, (value) {
      return _then(_value.copyWith(avatarCard: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataAttributesQuizzesEntityCopyWith<$Res> get quizzes {
    return $CardIdDataAttributesQuizzesEntityCopyWith<$Res>(_value.quizzes,
        (value) {
      return _then(_value.copyWith(quizzes: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataAttributesUsersEntityCopyWith<$Res> get users {
    return $CardIdDataAttributesUsersEntityCopyWith<$Res>(_value.users,
        (value) {
      return _then(_value.copyWith(users: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardIdDataAttributesEntityImplCopyWith<$Res>
    implements $CardIdDataAttributesEntityCopyWith<$Res> {
  factory _$$CardIdDataAttributesEntityImplCopyWith(
          _$CardIdDataAttributesEntityImpl value,
          $Res Function(_$CardIdDataAttributesEntityImpl) then) =
      __$$CardIdDataAttributesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "role") String role,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "level") String level,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "publishedAt") DateTime publishedAt,
      @JsonKey(name: "avatar_card")
      CardIdDataAttributesAvatarCardEntity avatarCard,
      @JsonKey(name: "quizzes") CardIdDataAttributesQuizzesEntity quizzes,
      @JsonKey(name: "users") CardIdDataAttributesUsersEntity users});

  @override
  $CardIdDataAttributesAvatarCardEntityCopyWith<$Res> get avatarCard;
  @override
  $CardIdDataAttributesQuizzesEntityCopyWith<$Res> get quizzes;
  @override
  $CardIdDataAttributesUsersEntityCopyWith<$Res> get users;
}

/// @nodoc
class __$$CardIdDataAttributesEntityImplCopyWithImpl<$Res>
    extends _$CardIdDataAttributesEntityCopyWithImpl<$Res,
        _$CardIdDataAttributesEntityImpl>
    implements _$$CardIdDataAttributesEntityImplCopyWith<$Res> {
  __$$CardIdDataAttributesEntityImplCopyWithImpl(
      _$CardIdDataAttributesEntityImpl _value,
      $Res Function(_$CardIdDataAttributesEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? role = null,
    Object? description = null,
    Object? level = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? publishedAt = null,
    Object? avatarCard = null,
    Object? quizzes = null,
    Object? users = null,
  }) {
    return _then(_$CardIdDataAttributesEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      avatarCard: null == avatarCard
          ? _value.avatarCard
          : avatarCard // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesAvatarCardEntity,
      quizzes: null == quizzes
          ? _value.quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesQuizzesEntity,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesUsersEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataAttributesEntityImpl implements _CardIdDataAttributesEntity {
  const _$CardIdDataAttributesEntityImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "role") required this.role,
      @JsonKey(name: "description") required this.description,
      @JsonKey(name: "level") required this.level,
      @JsonKey(name: "createdAt") required this.createdAt,
      @JsonKey(name: "updatedAt") required this.updatedAt,
      @JsonKey(name: "publishedAt") required this.publishedAt,
      @JsonKey(name: "avatar_card") required this.avatarCard,
      @JsonKey(name: "quizzes") required this.quizzes,
      @JsonKey(name: "users") required this.users});

  factory _$CardIdDataAttributesEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardIdDataAttributesEntityImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "role")
  final String role;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "level")
  final String level;
  @override
  @JsonKey(name: "createdAt")
  final DateTime createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;
  @override
  @JsonKey(name: "publishedAt")
  final DateTime publishedAt;
  @override
  @JsonKey(name: "avatar_card")
  final CardIdDataAttributesAvatarCardEntity avatarCard;
  @override
  @JsonKey(name: "quizzes")
  final CardIdDataAttributesQuizzesEntity quizzes;
  @override
  @JsonKey(name: "users")
  final CardIdDataAttributesUsersEntity users;

  @override
  String toString() {
    return 'CardIdDataAttributesEntity(name: $name, role: $role, description: $description, level: $level, createdAt: $createdAt, updatedAt: $updatedAt, publishedAt: $publishedAt, avatarCard: $avatarCard, quizzes: $quizzes, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardIdDataAttributesEntityImpl &&
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
  _$$CardIdDataAttributesEntityImplCopyWith<_$CardIdDataAttributesEntityImpl>
      get copyWith => __$$CardIdDataAttributesEntityImplCopyWithImpl<
          _$CardIdDataAttributesEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataAttributesEntityImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataAttributesEntity
    implements CardIdDataAttributesEntity {
  const factory _CardIdDataAttributesEntity(
          {@JsonKey(name: "name") required final String name,
          @JsonKey(name: "role") required final String role,
          @JsonKey(name: "description") required final String description,
          @JsonKey(name: "level") required final String level,
          @JsonKey(name: "createdAt") required final DateTime createdAt,
          @JsonKey(name: "updatedAt") required final DateTime updatedAt,
          @JsonKey(name: "publishedAt") required final DateTime publishedAt,
          @JsonKey(name: "avatar_card")
          required final CardIdDataAttributesAvatarCardEntity avatarCard,
          @JsonKey(name: "quizzes")
          required final CardIdDataAttributesQuizzesEntity quizzes,
          @JsonKey(name: "users")
          required final CardIdDataAttributesUsersEntity users}) =
      _$CardIdDataAttributesEntityImpl;

  factory _CardIdDataAttributesEntity.fromJson(Map<String, dynamic> json) =
      _$CardIdDataAttributesEntityImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "role")
  String get role;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "level")
  String get level;
  @override
  @JsonKey(name: "createdAt")
  DateTime get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt;
  @override
  @JsonKey(name: "publishedAt")
  DateTime get publishedAt;
  @override
  @JsonKey(name: "avatar_card")
  CardIdDataAttributesAvatarCardEntity get avatarCard;
  @override
  @JsonKey(name: "quizzes")
  CardIdDataAttributesQuizzesEntity get quizzes;
  @override
  @JsonKey(name: "users")
  CardIdDataAttributesUsersEntity get users;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataAttributesEntityImplCopyWith<_$CardIdDataAttributesEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdDataAttributesAvatarCardEntity
    _$CardIdDataAttributesAvatarCardEntityFromJson(Map<String, dynamic> json) {
  return _CardIdDataAttributesAvatarCardEntity.fromJson(json);
}

/// @nodoc
mixin _$CardIdDataAttributesAvatarCardEntity {
  @JsonKey(name: "data")
  CardIdDataAttributesAvatarCardDataEntity get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataAttributesAvatarCardEntityCopyWith<
          CardIdDataAttributesAvatarCardEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataAttributesAvatarCardEntityCopyWith<$Res> {
  factory $CardIdDataAttributesAvatarCardEntityCopyWith(
          CardIdDataAttributesAvatarCardEntity value,
          $Res Function(CardIdDataAttributesAvatarCardEntity) then) =
      _$CardIdDataAttributesAvatarCardEntityCopyWithImpl<$Res,
          CardIdDataAttributesAvatarCardEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") CardIdDataAttributesAvatarCardDataEntity data});

  $CardIdDataAttributesAvatarCardDataEntityCopyWith<$Res> get data;
}

/// @nodoc
class _$CardIdDataAttributesAvatarCardEntityCopyWithImpl<$Res,
        $Val extends CardIdDataAttributesAvatarCardEntity>
    implements $CardIdDataAttributesAvatarCardEntityCopyWith<$Res> {
  _$CardIdDataAttributesAvatarCardEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesAvatarCardDataEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataAttributesAvatarCardDataEntityCopyWith<$Res> get data {
    return $CardIdDataAttributesAvatarCardDataEntityCopyWith<$Res>(_value.data,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardIdDataAttributesAvatarCardEntityImplCopyWith<$Res>
    implements $CardIdDataAttributesAvatarCardEntityCopyWith<$Res> {
  factory _$$CardIdDataAttributesAvatarCardEntityImplCopyWith(
          _$CardIdDataAttributesAvatarCardEntityImpl value,
          $Res Function(_$CardIdDataAttributesAvatarCardEntityImpl) then) =
      __$$CardIdDataAttributesAvatarCardEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") CardIdDataAttributesAvatarCardDataEntity data});

  @override
  $CardIdDataAttributesAvatarCardDataEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$CardIdDataAttributesAvatarCardEntityImplCopyWithImpl<$Res>
    extends _$CardIdDataAttributesAvatarCardEntityCopyWithImpl<$Res,
        _$CardIdDataAttributesAvatarCardEntityImpl>
    implements _$$CardIdDataAttributesAvatarCardEntityImplCopyWith<$Res> {
  __$$CardIdDataAttributesAvatarCardEntityImplCopyWithImpl(
      _$CardIdDataAttributesAvatarCardEntityImpl _value,
      $Res Function(_$CardIdDataAttributesAvatarCardEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CardIdDataAttributesAvatarCardEntityImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesAvatarCardDataEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataAttributesAvatarCardEntityImpl
    implements _CardIdDataAttributesAvatarCardEntity {
  const _$CardIdDataAttributesAvatarCardEntityImpl(
      {@JsonKey(name: "data") required this.data});

  factory _$CardIdDataAttributesAvatarCardEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardIdDataAttributesAvatarCardEntityImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final CardIdDataAttributesAvatarCardDataEntity data;

  @override
  String toString() {
    return 'CardIdDataAttributesAvatarCardEntity(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardIdDataAttributesAvatarCardEntityImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardIdDataAttributesAvatarCardEntityImplCopyWith<
          _$CardIdDataAttributesAvatarCardEntityImpl>
      get copyWith => __$$CardIdDataAttributesAvatarCardEntityImplCopyWithImpl<
          _$CardIdDataAttributesAvatarCardEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataAttributesAvatarCardEntityImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataAttributesAvatarCardEntity
    implements CardIdDataAttributesAvatarCardEntity {
  const factory _CardIdDataAttributesAvatarCardEntity(
          {@JsonKey(name: "data")
          required final CardIdDataAttributesAvatarCardDataEntity data}) =
      _$CardIdDataAttributesAvatarCardEntityImpl;

  factory _CardIdDataAttributesAvatarCardEntity.fromJson(
          Map<String, dynamic> json) =
      _$CardIdDataAttributesAvatarCardEntityImpl.fromJson;

  @override
  @JsonKey(name: "data")
  CardIdDataAttributesAvatarCardDataEntity get data;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataAttributesAvatarCardEntityImplCopyWith<
          _$CardIdDataAttributesAvatarCardEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdDataAttributesAvatarCardDataEntity
    _$CardIdDataAttributesAvatarCardDataEntityFromJson(
        Map<String, dynamic> json) {
  return _CardIdDataAttributesAvatarCardDataEntity.fromJson(json);
}

/// @nodoc
mixin _$CardIdDataAttributesAvatarCardDataEntity {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "attributes")
  CardIdDataAttributesAvatarCardDataAttributesEntity get attributes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataAttributesAvatarCardDataEntityCopyWith<
          CardIdDataAttributesAvatarCardDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataAttributesAvatarCardDataEntityCopyWith<$Res> {
  factory $CardIdDataAttributesAvatarCardDataEntityCopyWith(
          CardIdDataAttributesAvatarCardDataEntity value,
          $Res Function(CardIdDataAttributesAvatarCardDataEntity) then) =
      _$CardIdDataAttributesAvatarCardDataEntityCopyWithImpl<$Res,
          CardIdDataAttributesAvatarCardDataEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "attributes")
      CardIdDataAttributesAvatarCardDataAttributesEntity attributes});

  $CardIdDataAttributesAvatarCardDataAttributesEntityCopyWith<$Res>
      get attributes;
}

/// @nodoc
class _$CardIdDataAttributesAvatarCardDataEntityCopyWithImpl<$Res,
        $Val extends CardIdDataAttributesAvatarCardDataEntity>
    implements $CardIdDataAttributesAvatarCardDataEntityCopyWith<$Res> {
  _$CardIdDataAttributesAvatarCardDataEntityCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesAvatarCardDataAttributesEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataAttributesAvatarCardDataAttributesEntityCopyWith<$Res>
      get attributes {
    return $CardIdDataAttributesAvatarCardDataAttributesEntityCopyWith<$Res>(
        _value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardIdDataAttributesAvatarCardDataEntityImplCopyWith<$Res>
    implements $CardIdDataAttributesAvatarCardDataEntityCopyWith<$Res> {
  factory _$$CardIdDataAttributesAvatarCardDataEntityImplCopyWith(
          _$CardIdDataAttributesAvatarCardDataEntityImpl value,
          $Res Function(_$CardIdDataAttributesAvatarCardDataEntityImpl) then) =
      __$$CardIdDataAttributesAvatarCardDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "attributes")
      CardIdDataAttributesAvatarCardDataAttributesEntity attributes});

  @override
  $CardIdDataAttributesAvatarCardDataAttributesEntityCopyWith<$Res>
      get attributes;
}

/// @nodoc
class __$$CardIdDataAttributesAvatarCardDataEntityImplCopyWithImpl<$Res>
    extends _$CardIdDataAttributesAvatarCardDataEntityCopyWithImpl<$Res,
        _$CardIdDataAttributesAvatarCardDataEntityImpl>
    implements _$$CardIdDataAttributesAvatarCardDataEntityImplCopyWith<$Res> {
  __$$CardIdDataAttributesAvatarCardDataEntityImplCopyWithImpl(
      _$CardIdDataAttributesAvatarCardDataEntityImpl _value,
      $Res Function(_$CardIdDataAttributesAvatarCardDataEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_$CardIdDataAttributesAvatarCardDataEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesAvatarCardDataAttributesEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataAttributesAvatarCardDataEntityImpl
    implements _CardIdDataAttributesAvatarCardDataEntity {
  const _$CardIdDataAttributesAvatarCardDataEntityImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "attributes") required this.attributes});

  factory _$CardIdDataAttributesAvatarCardDataEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardIdDataAttributesAvatarCardDataEntityImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "attributes")
  final CardIdDataAttributesAvatarCardDataAttributesEntity attributes;

  @override
  String toString() {
    return 'CardIdDataAttributesAvatarCardDataEntity(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardIdDataAttributesAvatarCardDataEntityImpl &&
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
  _$$CardIdDataAttributesAvatarCardDataEntityImplCopyWith<
          _$CardIdDataAttributesAvatarCardDataEntityImpl>
      get copyWith =>
          __$$CardIdDataAttributesAvatarCardDataEntityImplCopyWithImpl<
              _$CardIdDataAttributesAvatarCardDataEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataAttributesAvatarCardDataEntityImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataAttributesAvatarCardDataEntity
    implements CardIdDataAttributesAvatarCardDataEntity {
  const factory _CardIdDataAttributesAvatarCardDataEntity(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "attributes")
      required final CardIdDataAttributesAvatarCardDataAttributesEntity
          attributes}) = _$CardIdDataAttributesAvatarCardDataEntityImpl;

  factory _CardIdDataAttributesAvatarCardDataEntity.fromJson(
          Map<String, dynamic> json) =
      _$CardIdDataAttributesAvatarCardDataEntityImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "attributes")
  CardIdDataAttributesAvatarCardDataAttributesEntity get attributes;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataAttributesAvatarCardDataEntityImplCopyWith<
          _$CardIdDataAttributesAvatarCardDataEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdDataAttributesAvatarCardDataAttributesEntity
    _$CardIdDataAttributesAvatarCardDataAttributesEntityFromJson(
        Map<String, dynamic> json) {
  return _CardIdDataAttributesAvatarCardDataAttributesEntity.fromJson(json);
}

/// @nodoc
mixin _$CardIdDataAttributesAvatarCardDataAttributesEntity {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "alternativeText")
  dynamic get alternativeText => throw _privateConstructorUsedError;
  @JsonKey(name: "caption")
  dynamic get caption => throw _privateConstructorUsedError;
  @JsonKey(name: "width")
  int get width => throw _privateConstructorUsedError;
  @JsonKey(name: "height")
  int get height => throw _privateConstructorUsedError;
  @JsonKey(name: "formats")
  CardIdDataAttributesAvatarCardDataAttributesFormatsEntity get formats =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "hash")
  String get hash => throw _privateConstructorUsedError;
  @JsonKey(name: "ext")
  String get ext => throw _privateConstructorUsedError;
  @JsonKey(name: "mime")
  String get mime => throw _privateConstructorUsedError;
  @JsonKey(name: "size")
  double get size => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: "previewUrl")
  dynamic get previewUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "provider")
  String get provider => throw _privateConstructorUsedError;
  @JsonKey(name: "provider_metadata")
  dynamic get providerMetadata => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "isUrlSigned")
  bool get isUrlSigned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataAttributesAvatarCardDataAttributesEntityCopyWith<
          CardIdDataAttributesAvatarCardDataAttributesEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataAttributesAvatarCardDataAttributesEntityCopyWith<
    $Res> {
  factory $CardIdDataAttributesAvatarCardDataAttributesEntityCopyWith(
          CardIdDataAttributesAvatarCardDataAttributesEntity value,
          $Res Function(CardIdDataAttributesAvatarCardDataAttributesEntity)
              then) =
      _$CardIdDataAttributesAvatarCardDataAttributesEntityCopyWithImpl<$Res,
          CardIdDataAttributesAvatarCardDataAttributesEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "alternativeText") dynamic alternativeText,
      @JsonKey(name: "caption") dynamic caption,
      @JsonKey(name: "width") int width,
      @JsonKey(name: "height") int height,
      @JsonKey(name: "formats")
      CardIdDataAttributesAvatarCardDataAttributesFormatsEntity formats,
      @JsonKey(name: "hash") String hash,
      @JsonKey(name: "ext") String ext,
      @JsonKey(name: "mime") String mime,
      @JsonKey(name: "size") double size,
      @JsonKey(name: "url") String url,
      @JsonKey(name: "previewUrl") dynamic previewUrl,
      @JsonKey(name: "provider") String provider,
      @JsonKey(name: "provider_metadata") dynamic providerMetadata,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "isUrlSigned") bool isUrlSigned});

  $CardIdDataAttributesAvatarCardDataAttributesFormatsEntityCopyWith<$Res>
      get formats;
}

/// @nodoc
class _$CardIdDataAttributesAvatarCardDataAttributesEntityCopyWithImpl<$Res,
        $Val extends CardIdDataAttributesAvatarCardDataAttributesEntity>
    implements
        $CardIdDataAttributesAvatarCardDataAttributesEntityCopyWith<$Res> {
  _$CardIdDataAttributesAvatarCardDataAttributesEntityCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? alternativeText = freezed,
    Object? caption = freezed,
    Object? width = null,
    Object? height = null,
    Object? formats = null,
    Object? hash = null,
    Object? ext = null,
    Object? mime = null,
    Object? size = null,
    Object? url = null,
    Object? previewUrl = freezed,
    Object? provider = null,
    Object? providerMetadata = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isUrlSigned = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      alternativeText: freezed == alternativeText
          ? _value.alternativeText
          : alternativeText // ignore: cast_nullable_to_non_nullable
              as dynamic,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as dynamic,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      formats: null == formats
          ? _value.formats
          : formats // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesAvatarCardDataAttributesFormatsEntity,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      ext: null == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String,
      mime: null == mime
          ? _value.mime
          : mime // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      providerMetadata: freezed == providerMetadata
          ? _value.providerMetadata
          : providerMetadata // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isUrlSigned: null == isUrlSigned
          ? _value.isUrlSigned
          : isUrlSigned // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataAttributesAvatarCardDataAttributesFormatsEntityCopyWith<$Res>
      get formats {
    return $CardIdDataAttributesAvatarCardDataAttributesFormatsEntityCopyWith<
        $Res>(_value.formats, (value) {
      return _then(_value.copyWith(formats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardIdDataAttributesAvatarCardDataAttributesEntityImplCopyWith<
        $Res>
    implements
        $CardIdDataAttributesAvatarCardDataAttributesEntityCopyWith<$Res> {
  factory _$$CardIdDataAttributesAvatarCardDataAttributesEntityImplCopyWith(
          _$CardIdDataAttributesAvatarCardDataAttributesEntityImpl value,
          $Res Function(
                  _$CardIdDataAttributesAvatarCardDataAttributesEntityImpl)
              then) =
      __$$CardIdDataAttributesAvatarCardDataAttributesEntityImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "alternativeText") dynamic alternativeText,
      @JsonKey(name: "caption") dynamic caption,
      @JsonKey(name: "width") int width,
      @JsonKey(name: "height") int height,
      @JsonKey(name: "formats")
      CardIdDataAttributesAvatarCardDataAttributesFormatsEntity formats,
      @JsonKey(name: "hash") String hash,
      @JsonKey(name: "ext") String ext,
      @JsonKey(name: "mime") String mime,
      @JsonKey(name: "size") double size,
      @JsonKey(name: "url") String url,
      @JsonKey(name: "previewUrl") dynamic previewUrl,
      @JsonKey(name: "provider") String provider,
      @JsonKey(name: "provider_metadata") dynamic providerMetadata,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "isUrlSigned") bool isUrlSigned});

  @override
  $CardIdDataAttributesAvatarCardDataAttributesFormatsEntityCopyWith<$Res>
      get formats;
}

/// @nodoc
class __$$CardIdDataAttributesAvatarCardDataAttributesEntityImplCopyWithImpl<
        $Res>
    extends _$CardIdDataAttributesAvatarCardDataAttributesEntityCopyWithImpl<
        $Res, _$CardIdDataAttributesAvatarCardDataAttributesEntityImpl>
    implements
        _$$CardIdDataAttributesAvatarCardDataAttributesEntityImplCopyWith<
            $Res> {
  __$$CardIdDataAttributesAvatarCardDataAttributesEntityImplCopyWithImpl(
      _$CardIdDataAttributesAvatarCardDataAttributesEntityImpl _value,
      $Res Function(_$CardIdDataAttributesAvatarCardDataAttributesEntityImpl)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? alternativeText = freezed,
    Object? caption = freezed,
    Object? width = null,
    Object? height = null,
    Object? formats = null,
    Object? hash = null,
    Object? ext = null,
    Object? mime = null,
    Object? size = null,
    Object? url = null,
    Object? previewUrl = freezed,
    Object? provider = null,
    Object? providerMetadata = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isUrlSigned = null,
  }) {
    return _then(_$CardIdDataAttributesAvatarCardDataAttributesEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      alternativeText: freezed == alternativeText
          ? _value.alternativeText
          : alternativeText // ignore: cast_nullable_to_non_nullable
              as dynamic,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as dynamic,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      formats: null == formats
          ? _value.formats
          : formats // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesAvatarCardDataAttributesFormatsEntity,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      ext: null == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String,
      mime: null == mime
          ? _value.mime
          : mime // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      providerMetadata: freezed == providerMetadata
          ? _value.providerMetadata
          : providerMetadata // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isUrlSigned: null == isUrlSigned
          ? _value.isUrlSigned
          : isUrlSigned // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataAttributesAvatarCardDataAttributesEntityImpl
    implements _CardIdDataAttributesAvatarCardDataAttributesEntity {
  const _$CardIdDataAttributesAvatarCardDataAttributesEntityImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "alternativeText") required this.alternativeText,
      @JsonKey(name: "caption") required this.caption,
      @JsonKey(name: "width") required this.width,
      @JsonKey(name: "height") required this.height,
      @JsonKey(name: "formats") required this.formats,
      @JsonKey(name: "hash") required this.hash,
      @JsonKey(name: "ext") required this.ext,
      @JsonKey(name: "mime") required this.mime,
      @JsonKey(name: "size") required this.size,
      @JsonKey(name: "url") required this.url,
      @JsonKey(name: "previewUrl") required this.previewUrl,
      @JsonKey(name: "provider") required this.provider,
      @JsonKey(name: "provider_metadata") required this.providerMetadata,
      @JsonKey(name: "createdAt") required this.createdAt,
      @JsonKey(name: "updatedAt") required this.updatedAt,
      @JsonKey(name: "isUrlSigned") required this.isUrlSigned});

  factory _$CardIdDataAttributesAvatarCardDataAttributesEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardIdDataAttributesAvatarCardDataAttributesEntityImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "alternativeText")
  final dynamic alternativeText;
  @override
  @JsonKey(name: "caption")
  final dynamic caption;
  @override
  @JsonKey(name: "width")
  final int width;
  @override
  @JsonKey(name: "height")
  final int height;
  @override
  @JsonKey(name: "formats")
  final CardIdDataAttributesAvatarCardDataAttributesFormatsEntity formats;
  @override
  @JsonKey(name: "hash")
  final String hash;
  @override
  @JsonKey(name: "ext")
  final String ext;
  @override
  @JsonKey(name: "mime")
  final String mime;
  @override
  @JsonKey(name: "size")
  final double size;
  @override
  @JsonKey(name: "url")
  final String url;
  @override
  @JsonKey(name: "previewUrl")
  final dynamic previewUrl;
  @override
  @JsonKey(name: "provider")
  final String provider;
  @override
  @JsonKey(name: "provider_metadata")
  final dynamic providerMetadata;
  @override
  @JsonKey(name: "createdAt")
  final DateTime createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;
  @override
  @JsonKey(name: "isUrlSigned")
  final bool isUrlSigned;

  @override
  String toString() {
    return 'CardIdDataAttributesAvatarCardDataAttributesEntity(name: $name, alternativeText: $alternativeText, caption: $caption, width: $width, height: $height, formats: $formats, hash: $hash, ext: $ext, mime: $mime, size: $size, url: $url, previewUrl: $previewUrl, provider: $provider, providerMetadata: $providerMetadata, createdAt: $createdAt, updatedAt: $updatedAt, isUrlSigned: $isUrlSigned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardIdDataAttributesAvatarCardDataAttributesEntityImpl &&
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
  _$$CardIdDataAttributesAvatarCardDataAttributesEntityImplCopyWith<
          _$CardIdDataAttributesAvatarCardDataAttributesEntityImpl>
      get copyWith =>
          __$$CardIdDataAttributesAvatarCardDataAttributesEntityImplCopyWithImpl<
                  _$CardIdDataAttributesAvatarCardDataAttributesEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataAttributesAvatarCardDataAttributesEntityImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataAttributesAvatarCardDataAttributesEntity
    implements CardIdDataAttributesAvatarCardDataAttributesEntity {
  const factory _CardIdDataAttributesAvatarCardDataAttributesEntity(
      {@JsonKey(name: "name") required final String name,
      @JsonKey(name: "alternativeText") required final dynamic alternativeText,
      @JsonKey(name: "caption") required final dynamic caption,
      @JsonKey(name: "width") required final int width,
      @JsonKey(name: "height") required final int height,
      @JsonKey(name: "formats")
      required final CardIdDataAttributesAvatarCardDataAttributesFormatsEntity
          formats,
      @JsonKey(name: "hash") required final String hash,
      @JsonKey(name: "ext") required final String ext,
      @JsonKey(name: "mime") required final String mime,
      @JsonKey(name: "size") required final double size,
      @JsonKey(name: "url") required final String url,
      @JsonKey(name: "previewUrl") required final dynamic previewUrl,
      @JsonKey(name: "provider") required final String provider,
      @JsonKey(name: "provider_metadata")
      required final dynamic providerMetadata,
      @JsonKey(name: "createdAt") required final DateTime createdAt,
      @JsonKey(name: "updatedAt") required final DateTime updatedAt,
      @JsonKey(name: "isUrlSigned")
      required final bool
          isUrlSigned}) = _$CardIdDataAttributesAvatarCardDataAttributesEntityImpl;

  factory _CardIdDataAttributesAvatarCardDataAttributesEntity.fromJson(
          Map<String, dynamic> json) =
      _$CardIdDataAttributesAvatarCardDataAttributesEntityImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "alternativeText")
  dynamic get alternativeText;
  @override
  @JsonKey(name: "caption")
  dynamic get caption;
  @override
  @JsonKey(name: "width")
  int get width;
  @override
  @JsonKey(name: "height")
  int get height;
  @override
  @JsonKey(name: "formats")
  CardIdDataAttributesAvatarCardDataAttributesFormatsEntity get formats;
  @override
  @JsonKey(name: "hash")
  String get hash;
  @override
  @JsonKey(name: "ext")
  String get ext;
  @override
  @JsonKey(name: "mime")
  String get mime;
  @override
  @JsonKey(name: "size")
  double get size;
  @override
  @JsonKey(name: "url")
  String get url;
  @override
  @JsonKey(name: "previewUrl")
  dynamic get previewUrl;
  @override
  @JsonKey(name: "provider")
  String get provider;
  @override
  @JsonKey(name: "provider_metadata")
  dynamic get providerMetadata;
  @override
  @JsonKey(name: "createdAt")
  DateTime get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt;
  @override
  @JsonKey(name: "isUrlSigned")
  bool get isUrlSigned;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataAttributesAvatarCardDataAttributesEntityImplCopyWith<
          _$CardIdDataAttributesAvatarCardDataAttributesEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdDataAttributesAvatarCardDataAttributesFormatsEntity
    _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityFromJson(
        Map<String, dynamic> json) {
  return _CardIdDataAttributesAvatarCardDataAttributesFormatsEntity.fromJson(
      json);
}

/// @nodoc
mixin _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntity {
  @JsonKey(name: "small")
  CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity get small =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail")
  CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity get thumbnail =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataAttributesAvatarCardDataAttributesFormatsEntityCopyWith<
          CardIdDataAttributesAvatarCardDataAttributesFormatsEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataAttributesAvatarCardDataAttributesFormatsEntityCopyWith<
    $Res> {
  factory $CardIdDataAttributesAvatarCardDataAttributesFormatsEntityCopyWith(
          CardIdDataAttributesAvatarCardDataAttributesFormatsEntity value,
          $Res Function(
                  CardIdDataAttributesAvatarCardDataAttributesFormatsEntity)
              then) =
      _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityCopyWithImpl<
          $Res, CardIdDataAttributesAvatarCardDataAttributesFormatsEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "small")
      CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity small,
      @JsonKey(name: "thumbnail")
      CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity thumbnail});

  $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityCopyWith<$Res>
      get small;
  $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityCopyWith<$Res>
      get thumbnail;
}

/// @nodoc
class _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityCopyWithImpl<
        $Res,
        $Val extends CardIdDataAttributesAvatarCardDataAttributesFormatsEntity>
    implements
        $CardIdDataAttributesAvatarCardDataAttributesFormatsEntityCopyWith<
            $Res> {
  _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? thumbnail = null,
  }) {
    return _then(_value.copyWith(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityCopyWith<$Res>
      get small {
    return $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityCopyWith<
        $Res>(_value.small, (value) {
      return _then(_value.copyWith(small: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityCopyWith<$Res>
      get thumbnail {
    return $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityCopyWith<
        $Res>(_value.thumbnail, (value) {
      return _then(_value.copyWith(thumbnail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImplCopyWith<
        $Res>
    implements
        $CardIdDataAttributesAvatarCardDataAttributesFormatsEntityCopyWith<
            $Res> {
  factory _$$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImplCopyWith(
          _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImpl value,
          $Res Function(
                  _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImpl)
              then) =
      __$$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "small")
      CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity small,
      @JsonKey(name: "thumbnail")
      CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity thumbnail});

  @override
  $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityCopyWith<$Res>
      get small;
  @override
  $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityCopyWith<$Res>
      get thumbnail;
}

/// @nodoc
class __$$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImplCopyWithImpl<
        $Res>
    extends _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityCopyWithImpl<
        $Res, _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImpl>
    implements
        _$$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImplCopyWith<
            $Res> {
  __$$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImplCopyWithImpl(
      _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImpl _value,
      $Res Function(
              _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImpl)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? thumbnail = null,
  }) {
    return _then(
        _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImpl(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImpl
    implements _CardIdDataAttributesAvatarCardDataAttributesFormatsEntity {
  const _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImpl(
      {@JsonKey(name: "small") required this.small,
      @JsonKey(name: "thumbnail") required this.thumbnail});

  factory _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImplFromJson(
          json);

  @override
  @JsonKey(name: "small")
  final CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity small;
  @override
  @JsonKey(name: "thumbnail")
  final CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity thumbnail;

  @override
  String toString() {
    return 'CardIdDataAttributesAvatarCardDataAttributesFormatsEntity(small: $small, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImpl &&
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
  _$$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImplCopyWith<
          _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImpl>
      get copyWith =>
          __$$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImplCopyWithImpl<
                  _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataAttributesAvatarCardDataAttributesFormatsEntity
    implements CardIdDataAttributesAvatarCardDataAttributesFormatsEntity {
  const factory _CardIdDataAttributesAvatarCardDataAttributesFormatsEntity(
      {@JsonKey(name: "small")
      required final CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity
          small,
      @JsonKey(name: "thumbnail")
      required final CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity
          thumbnail}) = _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImpl;

  factory _CardIdDataAttributesAvatarCardDataAttributesFormatsEntity.fromJson(
          Map<String, dynamic> json) =
      _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImpl.fromJson;

  @override
  @JsonKey(name: "small")
  CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity get small;
  @override
  @JsonKey(name: "thumbnail")
  CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImplCopyWith<
          _$CardIdDataAttributesAvatarCardDataAttributesFormatsEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity
    _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityFromJson(
        Map<String, dynamic> json) {
  return _CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity
      .fromJson(json);
}

/// @nodoc
mixin _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity {
  @JsonKey(name: "ext")
  String get ext => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: "hash")
  String get hash => throw _privateConstructorUsedError;
  @JsonKey(name: "mime")
  String get mime => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "path")
  dynamic get path => throw _privateConstructorUsedError;
  @JsonKey(name: "size")
  double get size => throw _privateConstructorUsedError;
  @JsonKey(name: "width")
  int get width => throw _privateConstructorUsedError;
  @JsonKey(name: "height")
  int get height => throw _privateConstructorUsedError;
  @JsonKey(name: "isUrlSigned")
  bool get isUrlSigned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityCopyWith<
          CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityCopyWith<
    $Res> {
  factory $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityCopyWith(
          CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity value,
          $Res Function(
                  CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity)
              then) =
      _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityCopyWithImpl<
          $Res, CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "ext") String ext,
      @JsonKey(name: "url") String url,
      @JsonKey(name: "hash") String hash,
      @JsonKey(name: "mime") String mime,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "path") dynamic path,
      @JsonKey(name: "size") double size,
      @JsonKey(name: "width") int width,
      @JsonKey(name: "height") int height,
      @JsonKey(name: "isUrlSigned") bool isUrlSigned});
}

/// @nodoc
class _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityCopyWithImpl<
        $Res,
        $Val extends CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity>
    implements
        $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityCopyWith<
            $Res> {
  _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ext = null,
    Object? url = null,
    Object? hash = null,
    Object? mime = null,
    Object? name = null,
    Object? path = freezed,
    Object? size = null,
    Object? width = null,
    Object? height = null,
    Object? isUrlSigned = null,
  }) {
    return _then(_value.copyWith(
      ext: null == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      mime: null == mime
          ? _value.mime
          : mime // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as dynamic,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      isUrlSigned: null == isUrlSigned
          ? _value.isUrlSigned
          : isUrlSigned // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImplCopyWith<
        $Res>
    implements
        $CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityCopyWith<
            $Res> {
  factory _$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImplCopyWith(
          _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImpl value,
          $Res Function(
                  _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImpl)
              then) =
      __$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ext") String ext,
      @JsonKey(name: "url") String url,
      @JsonKey(name: "hash") String hash,
      @JsonKey(name: "mime") String mime,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "path") dynamic path,
      @JsonKey(name: "size") double size,
      @JsonKey(name: "width") int width,
      @JsonKey(name: "height") int height,
      @JsonKey(name: "isUrlSigned") bool isUrlSigned});
}

/// @nodoc
class __$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImplCopyWithImpl<
        $Res>
    extends _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityCopyWithImpl<
        $Res,
        _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImpl>
    implements
        _$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImplCopyWith<
            $Res> {
  __$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImplCopyWithImpl(
      _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImpl
          _value,
      $Res Function(
              _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImpl)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ext = null,
    Object? url = null,
    Object? hash = null,
    Object? mime = null,
    Object? name = null,
    Object? path = freezed,
    Object? size = null,
    Object? width = null,
    Object? height = null,
    Object? isUrlSigned = null,
  }) {
    return _then(
        _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImpl(
      ext: null == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      mime: null == mime
          ? _value.mime
          : mime // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as dynamic,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      isUrlSigned: null == isUrlSigned
          ? _value.isUrlSigned
          : isUrlSigned // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImpl
    implements _CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity {
  const _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImpl(
      {@JsonKey(name: "ext") required this.ext,
      @JsonKey(name: "url") required this.url,
      @JsonKey(name: "hash") required this.hash,
      @JsonKey(name: "mime") required this.mime,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "path") required this.path,
      @JsonKey(name: "size") required this.size,
      @JsonKey(name: "width") required this.width,
      @JsonKey(name: "height") required this.height,
      @JsonKey(name: "isUrlSigned") required this.isUrlSigned});

  factory _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImplFromJson(
          json);

  @override
  @JsonKey(name: "ext")
  final String ext;
  @override
  @JsonKey(name: "url")
  final String url;
  @override
  @JsonKey(name: "hash")
  final String hash;
  @override
  @JsonKey(name: "mime")
  final String mime;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "path")
  final dynamic path;
  @override
  @JsonKey(name: "size")
  final double size;
  @override
  @JsonKey(name: "width")
  final int width;
  @override
  @JsonKey(name: "height")
  final int height;
  @override
  @JsonKey(name: "isUrlSigned")
  final bool isUrlSigned;

  @override
  String toString() {
    return 'CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity(ext: $ext, url: $url, hash: $hash, mime: $mime, name: $name, path: $path, size: $size, width: $width, height: $height, isUrlSigned: $isUrlSigned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImpl &&
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
  _$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImplCopyWith<
          _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImpl>
      get copyWith =>
          __$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImplCopyWithImpl<
                  _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity
    implements CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity {
  const factory _CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity(
          {@JsonKey(name: "ext") required final String ext,
          @JsonKey(name: "url") required final String url,
          @JsonKey(name: "hash") required final String hash,
          @JsonKey(name: "mime") required final String mime,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "path") required final dynamic path,
          @JsonKey(name: "size") required final double size,
          @JsonKey(name: "width") required final int width,
          @JsonKey(name: "height") required final int height,
          @JsonKey(name: "isUrlSigned") required final bool isUrlSigned}) =
      _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImpl;

  factory _CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntity.fromJson(
          Map<String, dynamic> json) =
      _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImpl
      .fromJson;

  @override
  @JsonKey(name: "ext")
  String get ext;
  @override
  @JsonKey(name: "url")
  String get url;
  @override
  @JsonKey(name: "hash")
  String get hash;
  @override
  @JsonKey(name: "mime")
  String get mime;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "path")
  dynamic get path;
  @override
  @JsonKey(name: "size")
  double get size;
  @override
  @JsonKey(name: "width")
  int get width;
  @override
  @JsonKey(name: "height")
  int get height;
  @override
  @JsonKey(name: "isUrlSigned")
  bool get isUrlSigned;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImplCopyWith<
          _$CardIdDataAttributesAvatarCardDataAttributesFormatsSizeEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdDataAttributesQuizzesEntity _$CardIdDataAttributesQuizzesEntityFromJson(
    Map<String, dynamic> json) {
  return _CardIdDataAttributesQuizzesEntity.fromJson(json);
}

/// @nodoc
mixin _$CardIdDataAttributesQuizzesEntity {
  @JsonKey(name: "data")
  List<CardIdDataAttributesQuizzesDataEntity> get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataAttributesQuizzesEntityCopyWith<CardIdDataAttributesQuizzesEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataAttributesQuizzesEntityCopyWith<$Res> {
  factory $CardIdDataAttributesQuizzesEntityCopyWith(
          CardIdDataAttributesQuizzesEntity value,
          $Res Function(CardIdDataAttributesQuizzesEntity) then) =
      _$CardIdDataAttributesQuizzesEntityCopyWithImpl<$Res,
          CardIdDataAttributesQuizzesEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "data")
      List<CardIdDataAttributesQuizzesDataEntity> data});
}

/// @nodoc
class _$CardIdDataAttributesQuizzesEntityCopyWithImpl<$Res,
        $Val extends CardIdDataAttributesQuizzesEntity>
    implements $CardIdDataAttributesQuizzesEntityCopyWith<$Res> {
  _$CardIdDataAttributesQuizzesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CardIdDataAttributesQuizzesDataEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardIdDataAttributesQuizzesEntityImplCopyWith<$Res>
    implements $CardIdDataAttributesQuizzesEntityCopyWith<$Res> {
  factory _$$CardIdDataAttributesQuizzesEntityImplCopyWith(
          _$CardIdDataAttributesQuizzesEntityImpl value,
          $Res Function(_$CardIdDataAttributesQuizzesEntityImpl) then) =
      __$$CardIdDataAttributesQuizzesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data")
      List<CardIdDataAttributesQuizzesDataEntity> data});
}

/// @nodoc
class __$$CardIdDataAttributesQuizzesEntityImplCopyWithImpl<$Res>
    extends _$CardIdDataAttributesQuizzesEntityCopyWithImpl<$Res,
        _$CardIdDataAttributesQuizzesEntityImpl>
    implements _$$CardIdDataAttributesQuizzesEntityImplCopyWith<$Res> {
  __$$CardIdDataAttributesQuizzesEntityImplCopyWithImpl(
      _$CardIdDataAttributesQuizzesEntityImpl _value,
      $Res Function(_$CardIdDataAttributesQuizzesEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CardIdDataAttributesQuizzesEntityImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CardIdDataAttributesQuizzesDataEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataAttributesQuizzesEntityImpl
    implements _CardIdDataAttributesQuizzesEntity {
  const _$CardIdDataAttributesQuizzesEntityImpl(
      {@JsonKey(name: "data")
      required final List<CardIdDataAttributesQuizzesDataEntity> data})
      : _data = data;

  factory _$CardIdDataAttributesQuizzesEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardIdDataAttributesQuizzesEntityImplFromJson(json);

  final List<CardIdDataAttributesQuizzesDataEntity> _data;
  @override
  @JsonKey(name: "data")
  List<CardIdDataAttributesQuizzesDataEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CardIdDataAttributesQuizzesEntity(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardIdDataAttributesQuizzesEntityImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardIdDataAttributesQuizzesEntityImplCopyWith<
          _$CardIdDataAttributesQuizzesEntityImpl>
      get copyWith => __$$CardIdDataAttributesQuizzesEntityImplCopyWithImpl<
          _$CardIdDataAttributesQuizzesEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataAttributesQuizzesEntityImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataAttributesQuizzesEntity
    implements CardIdDataAttributesQuizzesEntity {
  const factory _CardIdDataAttributesQuizzesEntity(
          {@JsonKey(name: "data")
          required final List<CardIdDataAttributesQuizzesDataEntity> data}) =
      _$CardIdDataAttributesQuizzesEntityImpl;

  factory _CardIdDataAttributesQuizzesEntity.fromJson(
          Map<String, dynamic> json) =
      _$CardIdDataAttributesQuizzesEntityImpl.fromJson;

  @override
  @JsonKey(name: "data")
  List<CardIdDataAttributesQuizzesDataEntity> get data;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataAttributesQuizzesEntityImplCopyWith<
          _$CardIdDataAttributesQuizzesEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdDataAttributesQuizzesDataEntity
    _$CardIdDataAttributesQuizzesDataEntityFromJson(Map<String, dynamic> json) {
  return _CardIdDataAttributesQuizzesDataEntity.fromJson(json);
}

/// @nodoc
mixin _$CardIdDataAttributesQuizzesDataEntity {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "attributes")
  CardIdDataAttributesQuizzesDataAttributesEntity get attributes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataAttributesQuizzesDataEntityCopyWith<
          CardIdDataAttributesQuizzesDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataAttributesQuizzesDataEntityCopyWith<$Res> {
  factory $CardIdDataAttributesQuizzesDataEntityCopyWith(
          CardIdDataAttributesQuizzesDataEntity value,
          $Res Function(CardIdDataAttributesQuizzesDataEntity) then) =
      _$CardIdDataAttributesQuizzesDataEntityCopyWithImpl<$Res,
          CardIdDataAttributesQuizzesDataEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "attributes")
      CardIdDataAttributesQuizzesDataAttributesEntity attributes});

  $CardIdDataAttributesQuizzesDataAttributesEntityCopyWith<$Res> get attributes;
}

/// @nodoc
class _$CardIdDataAttributesQuizzesDataEntityCopyWithImpl<$Res,
        $Val extends CardIdDataAttributesQuizzesDataEntity>
    implements $CardIdDataAttributesQuizzesDataEntityCopyWith<$Res> {
  _$CardIdDataAttributesQuizzesDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesQuizzesDataAttributesEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataAttributesQuizzesDataAttributesEntityCopyWith<$Res>
      get attributes {
    return $CardIdDataAttributesQuizzesDataAttributesEntityCopyWith<$Res>(
        _value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardIdDataAttributesQuizzesDataEntityImplCopyWith<$Res>
    implements $CardIdDataAttributesQuizzesDataEntityCopyWith<$Res> {
  factory _$$CardIdDataAttributesQuizzesDataEntityImplCopyWith(
          _$CardIdDataAttributesQuizzesDataEntityImpl value,
          $Res Function(_$CardIdDataAttributesQuizzesDataEntityImpl) then) =
      __$$CardIdDataAttributesQuizzesDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "attributes")
      CardIdDataAttributesQuizzesDataAttributesEntity attributes});

  @override
  $CardIdDataAttributesQuizzesDataAttributesEntityCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$CardIdDataAttributesQuizzesDataEntityImplCopyWithImpl<$Res>
    extends _$CardIdDataAttributesQuizzesDataEntityCopyWithImpl<$Res,
        _$CardIdDataAttributesQuizzesDataEntityImpl>
    implements _$$CardIdDataAttributesQuizzesDataEntityImplCopyWith<$Res> {
  __$$CardIdDataAttributesQuizzesDataEntityImplCopyWithImpl(
      _$CardIdDataAttributesQuizzesDataEntityImpl _value,
      $Res Function(_$CardIdDataAttributesQuizzesDataEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_$CardIdDataAttributesQuizzesDataEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesQuizzesDataAttributesEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataAttributesQuizzesDataEntityImpl
    implements _CardIdDataAttributesQuizzesDataEntity {
  const _$CardIdDataAttributesQuizzesDataEntityImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "attributes") required this.attributes});

  factory _$CardIdDataAttributesQuizzesDataEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardIdDataAttributesQuizzesDataEntityImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "attributes")
  final CardIdDataAttributesQuizzesDataAttributesEntity attributes;

  @override
  String toString() {
    return 'CardIdDataAttributesQuizzesDataEntity(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardIdDataAttributesQuizzesDataEntityImpl &&
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
  _$$CardIdDataAttributesQuizzesDataEntityImplCopyWith<
          _$CardIdDataAttributesQuizzesDataEntityImpl>
      get copyWith => __$$CardIdDataAttributesQuizzesDataEntityImplCopyWithImpl<
          _$CardIdDataAttributesQuizzesDataEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataAttributesQuizzesDataEntityImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataAttributesQuizzesDataEntity
    implements CardIdDataAttributesQuizzesDataEntity {
  const factory _CardIdDataAttributesQuizzesDataEntity(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "attributes")
      required final CardIdDataAttributesQuizzesDataAttributesEntity
          attributes}) = _$CardIdDataAttributesQuizzesDataEntityImpl;

  factory _CardIdDataAttributesQuizzesDataEntity.fromJson(
          Map<String, dynamic> json) =
      _$CardIdDataAttributesQuizzesDataEntityImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "attributes")
  CardIdDataAttributesQuizzesDataAttributesEntity get attributes;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataAttributesQuizzesDataEntityImplCopyWith<
          _$CardIdDataAttributesQuizzesDataEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdDataAttributesQuizzesDataAttributesEntity
    _$CardIdDataAttributesQuizzesDataAttributesEntityFromJson(
        Map<String, dynamic> json) {
  return _CardIdDataAttributesQuizzesDataAttributesEntity.fromJson(json);
}

/// @nodoc
mixin _$CardIdDataAttributesQuizzesDataAttributesEntity {
  @JsonKey(name: "quiz_question")
  String get quizQuestion => throw _privateConstructorUsedError;
  @JsonKey(name: "option_one")
  String get optionOne => throw _privateConstructorUsedError;
  @JsonKey(name: "option_two")
  String get optionTwo => throw _privateConstructorUsedError;
  @JsonKey(name: "option_three")
  String get optionThree => throw _privateConstructorUsedError;
  @JsonKey(name: "option_four")
  String get optionFour => throw _privateConstructorUsedError;
  @JsonKey(name: "correct_option")
  String get correctOption => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "publishedAt")
  DateTime get publishedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "score")
  int get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataAttributesQuizzesDataAttributesEntityCopyWith<
          CardIdDataAttributesQuizzesDataAttributesEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataAttributesQuizzesDataAttributesEntityCopyWith<$Res> {
  factory $CardIdDataAttributesQuizzesDataAttributesEntityCopyWith(
          CardIdDataAttributesQuizzesDataAttributesEntity value,
          $Res Function(CardIdDataAttributesQuizzesDataAttributesEntity) then) =
      _$CardIdDataAttributesQuizzesDataAttributesEntityCopyWithImpl<$Res,
          CardIdDataAttributesQuizzesDataAttributesEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "quiz_question") String quizQuestion,
      @JsonKey(name: "option_one") String optionOne,
      @JsonKey(name: "option_two") String optionTwo,
      @JsonKey(name: "option_three") String optionThree,
      @JsonKey(name: "option_four") String optionFour,
      @JsonKey(name: "correct_option") String correctOption,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "publishedAt") DateTime publishedAt,
      @JsonKey(name: "score") int score});
}

/// @nodoc
class _$CardIdDataAttributesQuizzesDataAttributesEntityCopyWithImpl<$Res,
        $Val extends CardIdDataAttributesQuizzesDataAttributesEntity>
    implements $CardIdDataAttributesQuizzesDataAttributesEntityCopyWith<$Res> {
  _$CardIdDataAttributesQuizzesDataAttributesEntityCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizQuestion = null,
    Object? optionOne = null,
    Object? optionTwo = null,
    Object? optionThree = null,
    Object? optionFour = null,
    Object? correctOption = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? publishedAt = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      quizQuestion: null == quizQuestion
          ? _value.quizQuestion
          : quizQuestion // ignore: cast_nullable_to_non_nullable
              as String,
      optionOne: null == optionOne
          ? _value.optionOne
          : optionOne // ignore: cast_nullable_to_non_nullable
              as String,
      optionTwo: null == optionTwo
          ? _value.optionTwo
          : optionTwo // ignore: cast_nullable_to_non_nullable
              as String,
      optionThree: null == optionThree
          ? _value.optionThree
          : optionThree // ignore: cast_nullable_to_non_nullable
              as String,
      optionFour: null == optionFour
          ? _value.optionFour
          : optionFour // ignore: cast_nullable_to_non_nullable
              as String,
      correctOption: null == correctOption
          ? _value.correctOption
          : correctOption // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardIdDataAttributesQuizzesDataAttributesEntityImplCopyWith<
        $Res>
    implements $CardIdDataAttributesQuizzesDataAttributesEntityCopyWith<$Res> {
  factory _$$CardIdDataAttributesQuizzesDataAttributesEntityImplCopyWith(
          _$CardIdDataAttributesQuizzesDataAttributesEntityImpl value,
          $Res Function(_$CardIdDataAttributesQuizzesDataAttributesEntityImpl)
              then) =
      __$$CardIdDataAttributesQuizzesDataAttributesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "quiz_question") String quizQuestion,
      @JsonKey(name: "option_one") String optionOne,
      @JsonKey(name: "option_two") String optionTwo,
      @JsonKey(name: "option_three") String optionThree,
      @JsonKey(name: "option_four") String optionFour,
      @JsonKey(name: "correct_option") String correctOption,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "publishedAt") DateTime publishedAt,
      @JsonKey(name: "score") int score});
}

/// @nodoc
class __$$CardIdDataAttributesQuizzesDataAttributesEntityImplCopyWithImpl<$Res>
    extends _$CardIdDataAttributesQuizzesDataAttributesEntityCopyWithImpl<$Res,
        _$CardIdDataAttributesQuizzesDataAttributesEntityImpl>
    implements
        _$$CardIdDataAttributesQuizzesDataAttributesEntityImplCopyWith<$Res> {
  __$$CardIdDataAttributesQuizzesDataAttributesEntityImplCopyWithImpl(
      _$CardIdDataAttributesQuizzesDataAttributesEntityImpl _value,
      $Res Function(_$CardIdDataAttributesQuizzesDataAttributesEntityImpl)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizQuestion = null,
    Object? optionOne = null,
    Object? optionTwo = null,
    Object? optionThree = null,
    Object? optionFour = null,
    Object? correctOption = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? publishedAt = null,
    Object? score = null,
  }) {
    return _then(_$CardIdDataAttributesQuizzesDataAttributesEntityImpl(
      quizQuestion: null == quizQuestion
          ? _value.quizQuestion
          : quizQuestion // ignore: cast_nullable_to_non_nullable
              as String,
      optionOne: null == optionOne
          ? _value.optionOne
          : optionOne // ignore: cast_nullable_to_non_nullable
              as String,
      optionTwo: null == optionTwo
          ? _value.optionTwo
          : optionTwo // ignore: cast_nullable_to_non_nullable
              as String,
      optionThree: null == optionThree
          ? _value.optionThree
          : optionThree // ignore: cast_nullable_to_non_nullable
              as String,
      optionFour: null == optionFour
          ? _value.optionFour
          : optionFour // ignore: cast_nullable_to_non_nullable
              as String,
      correctOption: null == correctOption
          ? _value.correctOption
          : correctOption // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataAttributesQuizzesDataAttributesEntityImpl
    implements _CardIdDataAttributesQuizzesDataAttributesEntity {
  const _$CardIdDataAttributesQuizzesDataAttributesEntityImpl(
      {@JsonKey(name: "quiz_question") required this.quizQuestion,
      @JsonKey(name: "option_one") required this.optionOne,
      @JsonKey(name: "option_two") required this.optionTwo,
      @JsonKey(name: "option_three") required this.optionThree,
      @JsonKey(name: "option_four") required this.optionFour,
      @JsonKey(name: "correct_option") required this.correctOption,
      @JsonKey(name: "createdAt") required this.createdAt,
      @JsonKey(name: "updatedAt") required this.updatedAt,
      @JsonKey(name: "publishedAt") required this.publishedAt,
      @JsonKey(name: "score") required this.score});

  factory _$CardIdDataAttributesQuizzesDataAttributesEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardIdDataAttributesQuizzesDataAttributesEntityImplFromJson(json);

  @override
  @JsonKey(name: "quiz_question")
  final String quizQuestion;
  @override
  @JsonKey(name: "option_one")
  final String optionOne;
  @override
  @JsonKey(name: "option_two")
  final String optionTwo;
  @override
  @JsonKey(name: "option_three")
  final String optionThree;
  @override
  @JsonKey(name: "option_four")
  final String optionFour;
  @override
  @JsonKey(name: "correct_option")
  final String correctOption;
  @override
  @JsonKey(name: "createdAt")
  final DateTime createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;
  @override
  @JsonKey(name: "publishedAt")
  final DateTime publishedAt;
  @override
  @JsonKey(name: "score")
  final int score;

  @override
  String toString() {
    return 'CardIdDataAttributesQuizzesDataAttributesEntity(quizQuestion: $quizQuestion, optionOne: $optionOne, optionTwo: $optionTwo, optionThree: $optionThree, optionFour: $optionFour, correctOption: $correctOption, createdAt: $createdAt, updatedAt: $updatedAt, publishedAt: $publishedAt, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardIdDataAttributesQuizzesDataAttributesEntityImpl &&
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
  _$$CardIdDataAttributesQuizzesDataAttributesEntityImplCopyWith<
          _$CardIdDataAttributesQuizzesDataAttributesEntityImpl>
      get copyWith =>
          __$$CardIdDataAttributesQuizzesDataAttributesEntityImplCopyWithImpl<
                  _$CardIdDataAttributesQuizzesDataAttributesEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataAttributesQuizzesDataAttributesEntityImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataAttributesQuizzesDataAttributesEntity
    implements CardIdDataAttributesQuizzesDataAttributesEntity {
  const factory _CardIdDataAttributesQuizzesDataAttributesEntity(
          {@JsonKey(name: "quiz_question") required final String quizQuestion,
          @JsonKey(name: "option_one") required final String optionOne,
          @JsonKey(name: "option_two") required final String optionTwo,
          @JsonKey(name: "option_three") required final String optionThree,
          @JsonKey(name: "option_four") required final String optionFour,
          @JsonKey(name: "correct_option") required final String correctOption,
          @JsonKey(name: "createdAt") required final DateTime createdAt,
          @JsonKey(name: "updatedAt") required final DateTime updatedAt,
          @JsonKey(name: "publishedAt") required final DateTime publishedAt,
          @JsonKey(name: "score") required final int score}) =
      _$CardIdDataAttributesQuizzesDataAttributesEntityImpl;

  factory _CardIdDataAttributesQuizzesDataAttributesEntity.fromJson(
          Map<String, dynamic> json) =
      _$CardIdDataAttributesQuizzesDataAttributesEntityImpl.fromJson;

  @override
  @JsonKey(name: "quiz_question")
  String get quizQuestion;
  @override
  @JsonKey(name: "option_one")
  String get optionOne;
  @override
  @JsonKey(name: "option_two")
  String get optionTwo;
  @override
  @JsonKey(name: "option_three")
  String get optionThree;
  @override
  @JsonKey(name: "option_four")
  String get optionFour;
  @override
  @JsonKey(name: "correct_option")
  String get correctOption;
  @override
  @JsonKey(name: "createdAt")
  DateTime get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt;
  @override
  @JsonKey(name: "publishedAt")
  DateTime get publishedAt;
  @override
  @JsonKey(name: "score")
  int get score;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataAttributesQuizzesDataAttributesEntityImplCopyWith<
          _$CardIdDataAttributesQuizzesDataAttributesEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdDataAttributesUsersEntity _$CardIdDataAttributesUsersEntityFromJson(
    Map<String, dynamic> json) {
  return _CardIdDataAttributesUsersEntity.fromJson(json);
}

/// @nodoc
mixin _$CardIdDataAttributesUsersEntity {
  @JsonKey(name: "data")
  List<CardIdDataAttributesUsersDataEntity> get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataAttributesUsersEntityCopyWith<CardIdDataAttributesUsersEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataAttributesUsersEntityCopyWith<$Res> {
  factory $CardIdDataAttributesUsersEntityCopyWith(
          CardIdDataAttributesUsersEntity value,
          $Res Function(CardIdDataAttributesUsersEntity) then) =
      _$CardIdDataAttributesUsersEntityCopyWithImpl<$Res,
          CardIdDataAttributesUsersEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<CardIdDataAttributesUsersDataEntity> data});
}

/// @nodoc
class _$CardIdDataAttributesUsersEntityCopyWithImpl<$Res,
        $Val extends CardIdDataAttributesUsersEntity>
    implements $CardIdDataAttributesUsersEntityCopyWith<$Res> {
  _$CardIdDataAttributesUsersEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CardIdDataAttributesUsersDataEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardIdDataAttributesUsersEntityImplCopyWith<$Res>
    implements $CardIdDataAttributesUsersEntityCopyWith<$Res> {
  factory _$$CardIdDataAttributesUsersEntityImplCopyWith(
          _$CardIdDataAttributesUsersEntityImpl value,
          $Res Function(_$CardIdDataAttributesUsersEntityImpl) then) =
      __$$CardIdDataAttributesUsersEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<CardIdDataAttributesUsersDataEntity> data});
}

/// @nodoc
class __$$CardIdDataAttributesUsersEntityImplCopyWithImpl<$Res>
    extends _$CardIdDataAttributesUsersEntityCopyWithImpl<$Res,
        _$CardIdDataAttributesUsersEntityImpl>
    implements _$$CardIdDataAttributesUsersEntityImplCopyWith<$Res> {
  __$$CardIdDataAttributesUsersEntityImplCopyWithImpl(
      _$CardIdDataAttributesUsersEntityImpl _value,
      $Res Function(_$CardIdDataAttributesUsersEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CardIdDataAttributesUsersEntityImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CardIdDataAttributesUsersDataEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataAttributesUsersEntityImpl
    implements _CardIdDataAttributesUsersEntity {
  const _$CardIdDataAttributesUsersEntityImpl(
      {@JsonKey(name: "data")
      required final List<CardIdDataAttributesUsersDataEntity> data})
      : _data = data;

  factory _$CardIdDataAttributesUsersEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardIdDataAttributesUsersEntityImplFromJson(json);

  final List<CardIdDataAttributesUsersDataEntity> _data;
  @override
  @JsonKey(name: "data")
  List<CardIdDataAttributesUsersDataEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CardIdDataAttributesUsersEntity(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardIdDataAttributesUsersEntityImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardIdDataAttributesUsersEntityImplCopyWith<
          _$CardIdDataAttributesUsersEntityImpl>
      get copyWith => __$$CardIdDataAttributesUsersEntityImplCopyWithImpl<
          _$CardIdDataAttributesUsersEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataAttributesUsersEntityImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataAttributesUsersEntity
    implements CardIdDataAttributesUsersEntity {
  const factory _CardIdDataAttributesUsersEntity(
          {@JsonKey(name: "data")
          required final List<CardIdDataAttributesUsersDataEntity> data}) =
      _$CardIdDataAttributesUsersEntityImpl;

  factory _CardIdDataAttributesUsersEntity.fromJson(Map<String, dynamic> json) =
      _$CardIdDataAttributesUsersEntityImpl.fromJson;

  @override
  @JsonKey(name: "data")
  List<CardIdDataAttributesUsersDataEntity> get data;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataAttributesUsersEntityImplCopyWith<
          _$CardIdDataAttributesUsersEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdDataAttributesUsersDataEntity
    _$CardIdDataAttributesUsersDataEntityFromJson(Map<String, dynamic> json) {
  return _CardIdDataAttributesUsersDataEntity.fromJson(json);
}

/// @nodoc
mixin _$CardIdDataAttributesUsersDataEntity {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "attributes")
  CardIdDataAttributesUsersDataAttributesEntity get attributes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataAttributesUsersDataEntityCopyWith<
          CardIdDataAttributesUsersDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataAttributesUsersDataEntityCopyWith<$Res> {
  factory $CardIdDataAttributesUsersDataEntityCopyWith(
          CardIdDataAttributesUsersDataEntity value,
          $Res Function(CardIdDataAttributesUsersDataEntity) then) =
      _$CardIdDataAttributesUsersDataEntityCopyWithImpl<$Res,
          CardIdDataAttributesUsersDataEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "attributes")
      CardIdDataAttributesUsersDataAttributesEntity attributes});

  $CardIdDataAttributesUsersDataAttributesEntityCopyWith<$Res> get attributes;
}

/// @nodoc
class _$CardIdDataAttributesUsersDataEntityCopyWithImpl<$Res,
        $Val extends CardIdDataAttributesUsersDataEntity>
    implements $CardIdDataAttributesUsersDataEntityCopyWith<$Res> {
  _$CardIdDataAttributesUsersDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesUsersDataAttributesEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardIdDataAttributesUsersDataAttributesEntityCopyWith<$Res> get attributes {
    return $CardIdDataAttributesUsersDataAttributesEntityCopyWith<$Res>(
        _value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardIdDataAttributesUsersDataEntityImplCopyWith<$Res>
    implements $CardIdDataAttributesUsersDataEntityCopyWith<$Res> {
  factory _$$CardIdDataAttributesUsersDataEntityImplCopyWith(
          _$CardIdDataAttributesUsersDataEntityImpl value,
          $Res Function(_$CardIdDataAttributesUsersDataEntityImpl) then) =
      __$$CardIdDataAttributesUsersDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "attributes")
      CardIdDataAttributesUsersDataAttributesEntity attributes});

  @override
  $CardIdDataAttributesUsersDataAttributesEntityCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$CardIdDataAttributesUsersDataEntityImplCopyWithImpl<$Res>
    extends _$CardIdDataAttributesUsersDataEntityCopyWithImpl<$Res,
        _$CardIdDataAttributesUsersDataEntityImpl>
    implements _$$CardIdDataAttributesUsersDataEntityImplCopyWith<$Res> {
  __$$CardIdDataAttributesUsersDataEntityImplCopyWithImpl(
      _$CardIdDataAttributesUsersDataEntityImpl _value,
      $Res Function(_$CardIdDataAttributesUsersDataEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_$CardIdDataAttributesUsersDataEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CardIdDataAttributesUsersDataAttributesEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataAttributesUsersDataEntityImpl
    implements _CardIdDataAttributesUsersDataEntity {
  const _$CardIdDataAttributesUsersDataEntityImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "attributes") required this.attributes});

  factory _$CardIdDataAttributesUsersDataEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardIdDataAttributesUsersDataEntityImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "attributes")
  final CardIdDataAttributesUsersDataAttributesEntity attributes;

  @override
  String toString() {
    return 'CardIdDataAttributesUsersDataEntity(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardIdDataAttributesUsersDataEntityImpl &&
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
  _$$CardIdDataAttributesUsersDataEntityImplCopyWith<
          _$CardIdDataAttributesUsersDataEntityImpl>
      get copyWith => __$$CardIdDataAttributesUsersDataEntityImplCopyWithImpl<
          _$CardIdDataAttributesUsersDataEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataAttributesUsersDataEntityImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataAttributesUsersDataEntity
    implements CardIdDataAttributesUsersDataEntity {
  const factory _CardIdDataAttributesUsersDataEntity(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "attributes")
      required final CardIdDataAttributesUsersDataAttributesEntity
          attributes}) = _$CardIdDataAttributesUsersDataEntityImpl;

  factory _CardIdDataAttributesUsersDataEntity.fromJson(
          Map<String, dynamic> json) =
      _$CardIdDataAttributesUsersDataEntityImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "attributes")
  CardIdDataAttributesUsersDataAttributesEntity get attributes;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataAttributesUsersDataEntityImplCopyWith<
          _$CardIdDataAttributesUsersDataEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdDataAttributesUsersDataAttributesEntity
    _$CardIdDataAttributesUsersDataAttributesEntityFromJson(
        Map<String, dynamic> json) {
  return _CardIdDataAttributesUsersDataAttributesEntity.fromJson(json);
}

/// @nodoc
mixin _$CardIdDataAttributesUsersDataAttributesEntity {
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "provider")
  String get provider => throw _privateConstructorUsedError;
  @JsonKey(name: "confirmed")
  bool get confirmed => throw _privateConstructorUsedError;
  @JsonKey(name: "blocked")
  bool get blocked => throw _privateConstructorUsedError;
  @JsonKey(name: "collection_card")
  int get collectionCard => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "scores")
  int get scores => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardIdDataAttributesUsersDataAttributesEntityCopyWith<
          CardIdDataAttributesUsersDataAttributesEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdDataAttributesUsersDataAttributesEntityCopyWith<$Res> {
  factory $CardIdDataAttributesUsersDataAttributesEntityCopyWith(
          CardIdDataAttributesUsersDataAttributesEntity value,
          $Res Function(CardIdDataAttributesUsersDataAttributesEntity) then) =
      _$CardIdDataAttributesUsersDataAttributesEntityCopyWithImpl<$Res,
          CardIdDataAttributesUsersDataAttributesEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "username") String username,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "provider") String provider,
      @JsonKey(name: "confirmed") bool confirmed,
      @JsonKey(name: "blocked") bool blocked,
      @JsonKey(name: "collection_card") int collectionCard,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "scores") int scores});
}

/// @nodoc
class _$CardIdDataAttributesUsersDataAttributesEntityCopyWithImpl<$Res,
        $Val extends CardIdDataAttributesUsersDataAttributesEntity>
    implements $CardIdDataAttributesUsersDataAttributesEntityCopyWith<$Res> {
  _$CardIdDataAttributesUsersDataAttributesEntityCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? provider = null,
    Object? confirmed = null,
    Object? blocked = null,
    Object? collectionCard = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? scores = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      confirmed: null == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      blocked: null == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool,
      collectionCard: null == collectionCard
          ? _value.collectionCard
          : collectionCard // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardIdDataAttributesUsersDataAttributesEntityImplCopyWith<
        $Res>
    implements $CardIdDataAttributesUsersDataAttributesEntityCopyWith<$Res> {
  factory _$$CardIdDataAttributesUsersDataAttributesEntityImplCopyWith(
          _$CardIdDataAttributesUsersDataAttributesEntityImpl value,
          $Res Function(_$CardIdDataAttributesUsersDataAttributesEntityImpl)
              then) =
      __$$CardIdDataAttributesUsersDataAttributesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "username") String username,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "provider") String provider,
      @JsonKey(name: "confirmed") bool confirmed,
      @JsonKey(name: "blocked") bool blocked,
      @JsonKey(name: "collection_card") int collectionCard,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "scores") int scores});
}

/// @nodoc
class __$$CardIdDataAttributesUsersDataAttributesEntityImplCopyWithImpl<$Res>
    extends _$CardIdDataAttributesUsersDataAttributesEntityCopyWithImpl<$Res,
        _$CardIdDataAttributesUsersDataAttributesEntityImpl>
    implements
        _$$CardIdDataAttributesUsersDataAttributesEntityImplCopyWith<$Res> {
  __$$CardIdDataAttributesUsersDataAttributesEntityImplCopyWithImpl(
      _$CardIdDataAttributesUsersDataAttributesEntityImpl _value,
      $Res Function(_$CardIdDataAttributesUsersDataAttributesEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? provider = null,
    Object? confirmed = null,
    Object? blocked = null,
    Object? collectionCard = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? scores = null,
  }) {
    return _then(_$CardIdDataAttributesUsersDataAttributesEntityImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      confirmed: null == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      blocked: null == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool,
      collectionCard: null == collectionCard
          ? _value.collectionCard
          : collectionCard // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardIdDataAttributesUsersDataAttributesEntityImpl
    implements _CardIdDataAttributesUsersDataAttributesEntity {
  const _$CardIdDataAttributesUsersDataAttributesEntityImpl(
      {@JsonKey(name: "username") required this.username,
      @JsonKey(name: "email") required this.email,
      @JsonKey(name: "provider") required this.provider,
      @JsonKey(name: "confirmed") required this.confirmed,
      @JsonKey(name: "blocked") required this.blocked,
      @JsonKey(name: "collection_card") required this.collectionCard,
      @JsonKey(name: "createdAt") required this.createdAt,
      @JsonKey(name: "updatedAt") required this.updatedAt,
      @JsonKey(name: "scores") required this.scores});

  factory _$CardIdDataAttributesUsersDataAttributesEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardIdDataAttributesUsersDataAttributesEntityImplFromJson(json);

  @override
  @JsonKey(name: "username")
  final String username;
  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "provider")
  final String provider;
  @override
  @JsonKey(name: "confirmed")
  final bool confirmed;
  @override
  @JsonKey(name: "blocked")
  final bool blocked;
  @override
  @JsonKey(name: "collection_card")
  final int collectionCard;
  @override
  @JsonKey(name: "createdAt")
  final DateTime createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;
  @override
  @JsonKey(name: "scores")
  final int scores;

  @override
  String toString() {
    return 'CardIdDataAttributesUsersDataAttributesEntity(username: $username, email: $email, provider: $provider, confirmed: $confirmed, blocked: $blocked, collectionCard: $collectionCard, createdAt: $createdAt, updatedAt: $updatedAt, scores: $scores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardIdDataAttributesUsersDataAttributesEntityImpl &&
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
  _$$CardIdDataAttributesUsersDataAttributesEntityImplCopyWith<
          _$CardIdDataAttributesUsersDataAttributesEntityImpl>
      get copyWith =>
          __$$CardIdDataAttributesUsersDataAttributesEntityImplCopyWithImpl<
                  _$CardIdDataAttributesUsersDataAttributesEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdDataAttributesUsersDataAttributesEntityImplToJson(
      this,
    );
  }
}

abstract class _CardIdDataAttributesUsersDataAttributesEntity
    implements CardIdDataAttributesUsersDataAttributesEntity {
  const factory _CardIdDataAttributesUsersDataAttributesEntity(
          {@JsonKey(name: "username") required final String username,
          @JsonKey(name: "email") required final String email,
          @JsonKey(name: "provider") required final String provider,
          @JsonKey(name: "confirmed") required final bool confirmed,
          @JsonKey(name: "blocked") required final bool blocked,
          @JsonKey(name: "collection_card") required final int collectionCard,
          @JsonKey(name: "createdAt") required final DateTime createdAt,
          @JsonKey(name: "updatedAt") required final DateTime updatedAt,
          @JsonKey(name: "scores") required final int scores}) =
      _$CardIdDataAttributesUsersDataAttributesEntityImpl;

  factory _CardIdDataAttributesUsersDataAttributesEntity.fromJson(
          Map<String, dynamic> json) =
      _$CardIdDataAttributesUsersDataAttributesEntityImpl.fromJson;

  @override
  @JsonKey(name: "username")
  String get username;
  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "provider")
  String get provider;
  @override
  @JsonKey(name: "confirmed")
  bool get confirmed;
  @override
  @JsonKey(name: "blocked")
  bool get blocked;
  @override
  @JsonKey(name: "collection_card")
  int get collectionCard;
  @override
  @JsonKey(name: "createdAt")
  DateTime get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt;
  @override
  @JsonKey(name: "scores")
  int get scores;
  @override
  @JsonKey(ignore: true)
  _$$CardIdDataAttributesUsersDataAttributesEntityImplCopyWith<
          _$CardIdDataAttributesUsersDataAttributesEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CardIdMetaEntity _$CardIdMetaEntityFromJson(Map<String, dynamic> json) {
  return _CardIdMetaEntity.fromJson(json);
}

/// @nodoc
mixin _$CardIdMetaEntity {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardIdMetaEntityCopyWith<$Res> {
  factory $CardIdMetaEntityCopyWith(
          CardIdMetaEntity value, $Res Function(CardIdMetaEntity) then) =
      _$CardIdMetaEntityCopyWithImpl<$Res, CardIdMetaEntity>;
}

/// @nodoc
class _$CardIdMetaEntityCopyWithImpl<$Res, $Val extends CardIdMetaEntity>
    implements $CardIdMetaEntityCopyWith<$Res> {
  _$CardIdMetaEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CardIdMetaEntityImplCopyWith<$Res> {
  factory _$$CardIdMetaEntityImplCopyWith(_$CardIdMetaEntityImpl value,
          $Res Function(_$CardIdMetaEntityImpl) then) =
      __$$CardIdMetaEntityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CardIdMetaEntityImplCopyWithImpl<$Res>
    extends _$CardIdMetaEntityCopyWithImpl<$Res, _$CardIdMetaEntityImpl>
    implements _$$CardIdMetaEntityImplCopyWith<$Res> {
  __$$CardIdMetaEntityImplCopyWithImpl(_$CardIdMetaEntityImpl _value,
      $Res Function(_$CardIdMetaEntityImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$CardIdMetaEntityImpl implements _CardIdMetaEntity {
  const _$CardIdMetaEntityImpl();

  factory _$CardIdMetaEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardIdMetaEntityImplFromJson(json);

  @override
  String toString() {
    return 'CardIdMetaEntity()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CardIdMetaEntityImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$CardIdMetaEntityImplToJson(
      this,
    );
  }
}

abstract class _CardIdMetaEntity implements CardIdMetaEntity {
  const factory _CardIdMetaEntity() = _$CardIdMetaEntityImpl;

  factory _CardIdMetaEntity.fromJson(Map<String, dynamic> json) =
      _$CardIdMetaEntityImpl.fromJson;
}
