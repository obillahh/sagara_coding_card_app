// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_id_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserIdResponseEntity _$UserIdResponseEntityFromJson(Map<String, dynamic> json) {
  return _UserIdResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$UserIdResponseEntity {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "collection_card")
  int get collectionCard => throw _privateConstructorUsedError;
  @JsonKey(name: "scores")
  int get scores => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar")
  UserIdAvatarResponseEntity get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserIdResponseEntityCopyWith<UserIdResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserIdResponseEntityCopyWith<$Res> {
  factory $UserIdResponseEntityCopyWith(UserIdResponseEntity value,
          $Res Function(UserIdResponseEntity) then) =
      _$UserIdResponseEntityCopyWithImpl<$Res, UserIdResponseEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "collection_card") int collectionCard,
      @JsonKey(name: "scores") int scores,
      @JsonKey(name: "avatar") UserIdAvatarResponseEntity avatar});

  $UserIdAvatarResponseEntityCopyWith<$Res> get avatar;
}

/// @nodoc
class _$UserIdResponseEntityCopyWithImpl<$Res,
        $Val extends UserIdResponseEntity>
    implements $UserIdResponseEntityCopyWith<$Res> {
  _$UserIdResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? collectionCard = null,
    Object? scores = null,
    Object? avatar = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      collectionCard: null == collectionCard
          ? _value.collectionCard
          : collectionCard // ignore: cast_nullable_to_non_nullable
              as int,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as int,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as UserIdAvatarResponseEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIdAvatarResponseEntityCopyWith<$Res> get avatar {
    return $UserIdAvatarResponseEntityCopyWith<$Res>(_value.avatar, (value) {
      return _then(_value.copyWith(avatar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserIdResponseEntityImplCopyWith<$Res>
    implements $UserIdResponseEntityCopyWith<$Res> {
  factory _$$UserIdResponseEntityImplCopyWith(_$UserIdResponseEntityImpl value,
          $Res Function(_$UserIdResponseEntityImpl) then) =
      __$$UserIdResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "collection_card") int collectionCard,
      @JsonKey(name: "scores") int scores,
      @JsonKey(name: "avatar") UserIdAvatarResponseEntity avatar});

  @override
  $UserIdAvatarResponseEntityCopyWith<$Res> get avatar;
}

/// @nodoc
class __$$UserIdResponseEntityImplCopyWithImpl<$Res>
    extends _$UserIdResponseEntityCopyWithImpl<$Res, _$UserIdResponseEntityImpl>
    implements _$$UserIdResponseEntityImplCopyWith<$Res> {
  __$$UserIdResponseEntityImplCopyWithImpl(_$UserIdResponseEntityImpl _value,
      $Res Function(_$UserIdResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? collectionCard = null,
    Object? scores = null,
    Object? avatar = null,
  }) {
    return _then(_$UserIdResponseEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      collectionCard: null == collectionCard
          ? _value.collectionCard
          : collectionCard // ignore: cast_nullable_to_non_nullable
              as int,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as int,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as UserIdAvatarResponseEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserIdResponseEntityImpl implements _UserIdResponseEntity {
  const _$UserIdResponseEntityImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "username") required this.username,
      @JsonKey(name: "email") required this.email,
      @JsonKey(name: "collection_card") required this.collectionCard,
      @JsonKey(name: "scores") required this.scores,
      @JsonKey(name: "avatar") required this.avatar});

  factory _$UserIdResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserIdResponseEntityImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "username")
  final String username;
  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "collection_card")
  final int collectionCard;
  @override
  @JsonKey(name: "scores")
  final int scores;
  @override
  @JsonKey(name: "avatar")
  final UserIdAvatarResponseEntity avatar;

  @override
  String toString() {
    return 'UserIdResponseEntity(id: $id, username: $username, email: $email, collectionCard: $collectionCard, scores: $scores, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIdResponseEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.collectionCard, collectionCard) ||
                other.collectionCard == collectionCard) &&
            (identical(other.scores, scores) || other.scores == scores) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, username, email, collectionCard, scores, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserIdResponseEntityImplCopyWith<_$UserIdResponseEntityImpl>
      get copyWith =>
          __$$UserIdResponseEntityImplCopyWithImpl<_$UserIdResponseEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserIdResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _UserIdResponseEntity implements UserIdResponseEntity {
  const factory _UserIdResponseEntity(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "username") required final String username,
          @JsonKey(name: "email") required final String email,
          @JsonKey(name: "collection_card") required final int collectionCard,
          @JsonKey(name: "scores") required final int scores,
          @JsonKey(name: "avatar")
          required final UserIdAvatarResponseEntity avatar}) =
      _$UserIdResponseEntityImpl;

  factory _UserIdResponseEntity.fromJson(Map<String, dynamic> json) =
      _$UserIdResponseEntityImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "username")
  String get username;
  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "collection_card")
  int get collectionCard;
  @override
  @JsonKey(name: "scores")
  int get scores;
  @override
  @JsonKey(name: "avatar")
  UserIdAvatarResponseEntity get avatar;
  @override
  @JsonKey(ignore: true)
  _$$UserIdResponseEntityImplCopyWith<_$UserIdResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserIdAvatarResponseEntity _$UserIdAvatarResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _UserIdAvatarResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$UserIdAvatarResponseEntity {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
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
  @JsonKey(name: "isUrlSigned")
  bool get isUrlSigned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserIdAvatarResponseEntityCopyWith<UserIdAvatarResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserIdAvatarResponseEntityCopyWith<$Res> {
  factory $UserIdAvatarResponseEntityCopyWith(UserIdAvatarResponseEntity value,
          $Res Function(UserIdAvatarResponseEntity) then) =
      _$UserIdAvatarResponseEntityCopyWithImpl<$Res,
          UserIdAvatarResponseEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "alternativeText") dynamic alternativeText,
      @JsonKey(name: "caption") dynamic caption,
      @JsonKey(name: "width") int width,
      @JsonKey(name: "height") int height,
      @JsonKey(name: "hash") String hash,
      @JsonKey(name: "ext") String ext,
      @JsonKey(name: "mime") String mime,
      @JsonKey(name: "size") double size,
      @JsonKey(name: "url") String url,
      @JsonKey(name: "isUrlSigned") bool isUrlSigned});
}

/// @nodoc
class _$UserIdAvatarResponseEntityCopyWithImpl<$Res,
        $Val extends UserIdAvatarResponseEntity>
    implements $UserIdAvatarResponseEntityCopyWith<$Res> {
  _$UserIdAvatarResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? alternativeText = freezed,
    Object? caption = freezed,
    Object? width = null,
    Object? height = null,
    Object? hash = null,
    Object? ext = null,
    Object? mime = null,
    Object? size = null,
    Object? url = null,
    Object? isUrlSigned = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      isUrlSigned: null == isUrlSigned
          ? _value.isUrlSigned
          : isUrlSigned // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserIdAvatarResponseEntityImplCopyWith<$Res>
    implements $UserIdAvatarResponseEntityCopyWith<$Res> {
  factory _$$UserIdAvatarResponseEntityImplCopyWith(
          _$UserIdAvatarResponseEntityImpl value,
          $Res Function(_$UserIdAvatarResponseEntityImpl) then) =
      __$$UserIdAvatarResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "alternativeText") dynamic alternativeText,
      @JsonKey(name: "caption") dynamic caption,
      @JsonKey(name: "width") int width,
      @JsonKey(name: "height") int height,
      @JsonKey(name: "hash") String hash,
      @JsonKey(name: "ext") String ext,
      @JsonKey(name: "mime") String mime,
      @JsonKey(name: "size") double size,
      @JsonKey(name: "url") String url,
      @JsonKey(name: "isUrlSigned") bool isUrlSigned});
}

/// @nodoc
class __$$UserIdAvatarResponseEntityImplCopyWithImpl<$Res>
    extends _$UserIdAvatarResponseEntityCopyWithImpl<$Res,
        _$UserIdAvatarResponseEntityImpl>
    implements _$$UserIdAvatarResponseEntityImplCopyWith<$Res> {
  __$$UserIdAvatarResponseEntityImplCopyWithImpl(
      _$UserIdAvatarResponseEntityImpl _value,
      $Res Function(_$UserIdAvatarResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? alternativeText = freezed,
    Object? caption = freezed,
    Object? width = null,
    Object? height = null,
    Object? hash = null,
    Object? ext = null,
    Object? mime = null,
    Object? size = null,
    Object? url = null,
    Object? isUrlSigned = null,
  }) {
    return _then(_$UserIdAvatarResponseEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      isUrlSigned: null == isUrlSigned
          ? _value.isUrlSigned
          : isUrlSigned // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserIdAvatarResponseEntityImpl implements _UserIdAvatarResponseEntity {
  const _$UserIdAvatarResponseEntityImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "alternativeText") required this.alternativeText,
      @JsonKey(name: "caption") required this.caption,
      @JsonKey(name: "width") required this.width,
      @JsonKey(name: "height") required this.height,
      @JsonKey(name: "hash") required this.hash,
      @JsonKey(name: "ext") required this.ext,
      @JsonKey(name: "mime") required this.mime,
      @JsonKey(name: "size") required this.size,
      @JsonKey(name: "url") required this.url,
      @JsonKey(name: "isUrlSigned") required this.isUrlSigned});

  factory _$UserIdAvatarResponseEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserIdAvatarResponseEntityImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
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
  @JsonKey(name: "isUrlSigned")
  final bool isUrlSigned;

  @override
  String toString() {
    return 'UserIdAvatarResponseEntity(id: $id, name: $name, alternativeText: $alternativeText, caption: $caption, width: $width, height: $height, hash: $hash, ext: $ext, mime: $mime, size: $size, url: $url, isUrlSigned: $isUrlSigned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIdAvatarResponseEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.alternativeText, alternativeText) &&
            const DeepCollectionEquality().equals(other.caption, caption) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.ext, ext) || other.ext == ext) &&
            (identical(other.mime, mime) || other.mime == mime) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.isUrlSigned, isUrlSigned) ||
                other.isUrlSigned == isUrlSigned));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(alternativeText),
      const DeepCollectionEquality().hash(caption),
      width,
      height,
      hash,
      ext,
      mime,
      size,
      url,
      isUrlSigned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserIdAvatarResponseEntityImplCopyWith<_$UserIdAvatarResponseEntityImpl>
      get copyWith => __$$UserIdAvatarResponseEntityImplCopyWithImpl<
          _$UserIdAvatarResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserIdAvatarResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _UserIdAvatarResponseEntity
    implements UserIdAvatarResponseEntity {
  const factory _UserIdAvatarResponseEntity(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "alternativeText") required final dynamic alternativeText,
      @JsonKey(name: "caption") required final dynamic caption,
      @JsonKey(name: "width") required final int width,
      @JsonKey(name: "height") required final int height,
      @JsonKey(name: "hash") required final String hash,
      @JsonKey(name: "ext") required final String ext,
      @JsonKey(name: "mime") required final String mime,
      @JsonKey(name: "size") required final double size,
      @JsonKey(name: "url") required final String url,
      @JsonKey(name: "isUrlSigned")
      required final bool isUrlSigned}) = _$UserIdAvatarResponseEntityImpl;

  factory _UserIdAvatarResponseEntity.fromJson(Map<String, dynamic> json) =
      _$UserIdAvatarResponseEntityImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
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
  @JsonKey(name: "isUrlSigned")
  bool get isUrlSigned;
  @override
  @JsonKey(ignore: true)
  _$$UserIdAvatarResponseEntityImplCopyWith<_$UserIdAvatarResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
