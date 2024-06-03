// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_album_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CardAlbumResponseEntity _$CardAlbumResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _CardAlbumResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$CardAlbumResponseEntity {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  String get role => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "level")
  String get level => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar_card")
  DataAvatarCardEntity get avatarCard => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardAlbumResponseEntityCopyWith<CardAlbumResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardAlbumResponseEntityCopyWith<$Res> {
  factory $CardAlbumResponseEntityCopyWith(CardAlbumResponseEntity value,
          $Res Function(CardAlbumResponseEntity) then) =
      _$CardAlbumResponseEntityCopyWithImpl<$Res, CardAlbumResponseEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "role") String role,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "level") String level,
      @JsonKey(name: "avatar_card") DataAvatarCardEntity avatarCard,
      @JsonKey(name: "status") String status});

  $DataAvatarCardEntityCopyWith<$Res> get avatarCard;
}

/// @nodoc
class _$CardAlbumResponseEntityCopyWithImpl<$Res,
        $Val extends CardAlbumResponseEntity>
    implements $CardAlbumResponseEntityCopyWith<$Res> {
  _$CardAlbumResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? role = null,
    Object? description = null,
    Object? level = null,
    Object? avatarCard = null,
    Object? status = null,
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
      avatarCard: null == avatarCard
          ? _value.avatarCard
          : avatarCard // ignore: cast_nullable_to_non_nullable
              as DataAvatarCardEntity,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataAvatarCardEntityCopyWith<$Res> get avatarCard {
    return $DataAvatarCardEntityCopyWith<$Res>(_value.avatarCard, (value) {
      return _then(_value.copyWith(avatarCard: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardAlbumResponseEntityImplCopyWith<$Res>
    implements $CardAlbumResponseEntityCopyWith<$Res> {
  factory _$$CardAlbumResponseEntityImplCopyWith(
          _$CardAlbumResponseEntityImpl value,
          $Res Function(_$CardAlbumResponseEntityImpl) then) =
      __$$CardAlbumResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "role") String role,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "level") String level,
      @JsonKey(name: "avatar_card") DataAvatarCardEntity avatarCard,
      @JsonKey(name: "status") String status});

  @override
  $DataAvatarCardEntityCopyWith<$Res> get avatarCard;
}

/// @nodoc
class __$$CardAlbumResponseEntityImplCopyWithImpl<$Res>
    extends _$CardAlbumResponseEntityCopyWithImpl<$Res,
        _$CardAlbumResponseEntityImpl>
    implements _$$CardAlbumResponseEntityImplCopyWith<$Res> {
  __$$CardAlbumResponseEntityImplCopyWithImpl(
      _$CardAlbumResponseEntityImpl _value,
      $Res Function(_$CardAlbumResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? role = null,
    Object? description = null,
    Object? level = null,
    Object? avatarCard = null,
    Object? status = null,
  }) {
    return _then(_$CardAlbumResponseEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      avatarCard: null == avatarCard
          ? _value.avatarCard
          : avatarCard // ignore: cast_nullable_to_non_nullable
              as DataAvatarCardEntity,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardAlbumResponseEntityImpl implements _CardAlbumResponseEntity {
  const _$CardAlbumResponseEntityImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "role") required this.role,
      @JsonKey(name: "description") required this.description,
      @JsonKey(name: "level") required this.level,
      @JsonKey(name: "avatar_card") required this.avatarCard,
      @JsonKey(name: "status") required this.status});

  factory _$CardAlbumResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardAlbumResponseEntityImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
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
  @JsonKey(name: "avatar_card")
  final DataAvatarCardEntity avatarCard;
  @override
  @JsonKey(name: "status")
  final String status;

  @override
  String toString() {
    return 'CardAlbumResponseEntity(id: $id, name: $name, role: $role, description: $description, level: $level, avatarCard: $avatarCard, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardAlbumResponseEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.avatarCard, avatarCard) ||
                other.avatarCard == avatarCard) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, role, description, level, avatarCard, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardAlbumResponseEntityImplCopyWith<_$CardAlbumResponseEntityImpl>
      get copyWith => __$$CardAlbumResponseEntityImplCopyWithImpl<
          _$CardAlbumResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardAlbumResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _CardAlbumResponseEntity implements CardAlbumResponseEntity {
  const factory _CardAlbumResponseEntity(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "role") required final String role,
          @JsonKey(name: "description") required final String description,
          @JsonKey(name: "level") required final String level,
          @JsonKey(name: "avatar_card")
          required final DataAvatarCardEntity avatarCard,
          @JsonKey(name: "status") required final String status}) =
      _$CardAlbumResponseEntityImpl;

  factory _CardAlbumResponseEntity.fromJson(Map<String, dynamic> json) =
      _$CardAlbumResponseEntityImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
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
  @JsonKey(name: "avatar_card")
  DataAvatarCardEntity get avatarCard;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$CardAlbumResponseEntityImplCopyWith<_$CardAlbumResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataAvatarCardEntity _$DataAvatarCardEntityFromJson(Map<String, dynamic> json) {
  return _DataAvatarCardEntity.fromJson(json);
}

/// @nodoc
mixin _$DataAvatarCardEntity {
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
  @JsonKey(name: "previewUrl")
  dynamic get previewUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "provider")
  String get provider => throw _privateConstructorUsedError;
  @JsonKey(name: "provider_metadata")
  dynamic get providerMetadata => throw _privateConstructorUsedError;
  @JsonKey(name: "folderPath")
  String get folderPath => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "isUrlSigned")
  bool get isUrlSigned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataAvatarCardEntityCopyWith<DataAvatarCardEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataAvatarCardEntityCopyWith<$Res> {
  factory $DataAvatarCardEntityCopyWith(DataAvatarCardEntity value,
          $Res Function(DataAvatarCardEntity) then) =
      _$DataAvatarCardEntityCopyWithImpl<$Res, DataAvatarCardEntity>;
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
      @JsonKey(name: "previewUrl") dynamic previewUrl,
      @JsonKey(name: "provider") String provider,
      @JsonKey(name: "provider_metadata") dynamic providerMetadata,
      @JsonKey(name: "folderPath") String folderPath,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "isUrlSigned") bool isUrlSigned});
}

/// @nodoc
class _$DataAvatarCardEntityCopyWithImpl<$Res,
        $Val extends DataAvatarCardEntity>
    implements $DataAvatarCardEntityCopyWith<$Res> {
  _$DataAvatarCardEntityCopyWithImpl(this._value, this._then);

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
    Object? previewUrl = freezed,
    Object? provider = null,
    Object? providerMetadata = freezed,
    Object? folderPath = null,
    Object? createdAt = null,
    Object? updatedAt = null,
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
      folderPath: null == folderPath
          ? _value.folderPath
          : folderPath // ignore: cast_nullable_to_non_nullable
              as String,
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
}

/// @nodoc
abstract class _$$DataAvatarCardEntityImplCopyWith<$Res>
    implements $DataAvatarCardEntityCopyWith<$Res> {
  factory _$$DataAvatarCardEntityImplCopyWith(_$DataAvatarCardEntityImpl value,
          $Res Function(_$DataAvatarCardEntityImpl) then) =
      __$$DataAvatarCardEntityImplCopyWithImpl<$Res>;
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
      @JsonKey(name: "previewUrl") dynamic previewUrl,
      @JsonKey(name: "provider") String provider,
      @JsonKey(name: "provider_metadata") dynamic providerMetadata,
      @JsonKey(name: "folderPath") String folderPath,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "isUrlSigned") bool isUrlSigned});
}

/// @nodoc
class __$$DataAvatarCardEntityImplCopyWithImpl<$Res>
    extends _$DataAvatarCardEntityCopyWithImpl<$Res, _$DataAvatarCardEntityImpl>
    implements _$$DataAvatarCardEntityImplCopyWith<$Res> {
  __$$DataAvatarCardEntityImplCopyWithImpl(_$DataAvatarCardEntityImpl _value,
      $Res Function(_$DataAvatarCardEntityImpl) _then)
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
    Object? previewUrl = freezed,
    Object? provider = null,
    Object? providerMetadata = freezed,
    Object? folderPath = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isUrlSigned = null,
  }) {
    return _then(_$DataAvatarCardEntityImpl(
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
      folderPath: null == folderPath
          ? _value.folderPath
          : folderPath // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$DataAvatarCardEntityImpl implements _DataAvatarCardEntity {
  const _$DataAvatarCardEntityImpl(
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
      @JsonKey(name: "previewUrl") required this.previewUrl,
      @JsonKey(name: "provider") required this.provider,
      @JsonKey(name: "provider_metadata") required this.providerMetadata,
      @JsonKey(name: "folderPath") required this.folderPath,
      @JsonKey(name: "createdAt") required this.createdAt,
      @JsonKey(name: "updatedAt") required this.updatedAt,
      @JsonKey(name: "isUrlSigned") required this.isUrlSigned});

  factory _$DataAvatarCardEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataAvatarCardEntityImplFromJson(json);

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
  @JsonKey(name: "previewUrl")
  final dynamic previewUrl;
  @override
  @JsonKey(name: "provider")
  final String provider;
  @override
  @JsonKey(name: "provider_metadata")
  final dynamic providerMetadata;
  @override
  @JsonKey(name: "folderPath")
  final String folderPath;
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
    return 'DataAvatarCardEntity(id: $id, name: $name, alternativeText: $alternativeText, caption: $caption, width: $width, height: $height, hash: $hash, ext: $ext, mime: $mime, size: $size, url: $url, previewUrl: $previewUrl, provider: $provider, providerMetadata: $providerMetadata, folderPath: $folderPath, createdAt: $createdAt, updatedAt: $updatedAt, isUrlSigned: $isUrlSigned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataAvatarCardEntityImpl &&
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
            const DeepCollectionEquality()
                .equals(other.previewUrl, previewUrl) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            const DeepCollectionEquality()
                .equals(other.providerMetadata, providerMetadata) &&
            (identical(other.folderPath, folderPath) ||
                other.folderPath == folderPath) &&
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
      const DeepCollectionEquality().hash(previewUrl),
      provider,
      const DeepCollectionEquality().hash(providerMetadata),
      folderPath,
      createdAt,
      updatedAt,
      isUrlSigned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataAvatarCardEntityImplCopyWith<_$DataAvatarCardEntityImpl>
      get copyWith =>
          __$$DataAvatarCardEntityImplCopyWithImpl<_$DataAvatarCardEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataAvatarCardEntityImplToJson(
      this,
    );
  }
}

abstract class _DataAvatarCardEntity implements DataAvatarCardEntity {
  const factory _DataAvatarCardEntity(
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
      @JsonKey(name: "previewUrl") required final dynamic previewUrl,
      @JsonKey(name: "provider") required final String provider,
      @JsonKey(name: "provider_metadata")
      required final dynamic providerMetadata,
      @JsonKey(name: "folderPath") required final String folderPath,
      @JsonKey(name: "createdAt") required final DateTime createdAt,
      @JsonKey(name: "updatedAt") required final DateTime updatedAt,
      @JsonKey(name: "isUrlSigned")
      required final bool isUrlSigned}) = _$DataAvatarCardEntityImpl;

  factory _DataAvatarCardEntity.fromJson(Map<String, dynamic> json) =
      _$DataAvatarCardEntityImpl.fromJson;

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
  @JsonKey(name: "previewUrl")
  dynamic get previewUrl;
  @override
  @JsonKey(name: "provider")
  String get provider;
  @override
  @JsonKey(name: "provider_metadata")
  dynamic get providerMetadata;
  @override
  @JsonKey(name: "folderPath")
  String get folderPath;
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
  _$$DataAvatarCardEntityImplCopyWith<_$DataAvatarCardEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
