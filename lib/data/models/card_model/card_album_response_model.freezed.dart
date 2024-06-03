// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_album_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CardAlbumResponseModel _$CardAlbumResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CardAlbumResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CardAlbumResponseModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
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
  @JsonKey(name: "users")
  List<UserDataResponseModel>? get users => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar_card")
  DataAvatarCardModel? get avatarCard => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardAlbumResponseModelCopyWith<CardAlbumResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardAlbumResponseModelCopyWith<$Res> {
  factory $CardAlbumResponseModelCopyWith(CardAlbumResponseModel value,
          $Res Function(CardAlbumResponseModel) then) =
      _$CardAlbumResponseModelCopyWithImpl<$Res, CardAlbumResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "level") String? level,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "publishedAt") DateTime? publishedAt,
      @JsonKey(name: "users") List<UserDataResponseModel>? users,
      @JsonKey(name: "avatar_card") DataAvatarCardModel? avatarCard,
      @JsonKey(name: "status") String? status});

  $DataAvatarCardModelCopyWith<$Res>? get avatarCard;
}

/// @nodoc
class _$CardAlbumResponseModelCopyWithImpl<$Res,
        $Val extends CardAlbumResponseModel>
    implements $CardAlbumResponseModelCopyWith<$Res> {
  _$CardAlbumResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? role = freezed,
    Object? description = freezed,
    Object? level = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? publishedAt = freezed,
    Object? users = freezed,
    Object? avatarCard = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserDataResponseModel>?,
      avatarCard: freezed == avatarCard
          ? _value.avatarCard
          : avatarCard // ignore: cast_nullable_to_non_nullable
              as DataAvatarCardModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataAvatarCardModelCopyWith<$Res>? get avatarCard {
    if (_value.avatarCard == null) {
      return null;
    }

    return $DataAvatarCardModelCopyWith<$Res>(_value.avatarCard!, (value) {
      return _then(_value.copyWith(avatarCard: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardAlbumResponseModelImplCopyWith<$Res>
    implements $CardAlbumResponseModelCopyWith<$Res> {
  factory _$$CardAlbumResponseModelImplCopyWith(
          _$CardAlbumResponseModelImpl value,
          $Res Function(_$CardAlbumResponseModelImpl) then) =
      __$$CardAlbumResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "level") String? level,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "publishedAt") DateTime? publishedAt,
      @JsonKey(name: "users") List<UserDataResponseModel>? users,
      @JsonKey(name: "avatar_card") DataAvatarCardModel? avatarCard,
      @JsonKey(name: "status") String? status});

  @override
  $DataAvatarCardModelCopyWith<$Res>? get avatarCard;
}

/// @nodoc
class __$$CardAlbumResponseModelImplCopyWithImpl<$Res>
    extends _$CardAlbumResponseModelCopyWithImpl<$Res,
        _$CardAlbumResponseModelImpl>
    implements _$$CardAlbumResponseModelImplCopyWith<$Res> {
  __$$CardAlbumResponseModelImplCopyWithImpl(
      _$CardAlbumResponseModelImpl _value,
      $Res Function(_$CardAlbumResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? role = freezed,
    Object? description = freezed,
    Object? level = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? publishedAt = freezed,
    Object? users = freezed,
    Object? avatarCard = freezed,
    Object? status = freezed,
  }) {
    return _then(_$CardAlbumResponseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserDataResponseModel>?,
      avatarCard: freezed == avatarCard
          ? _value.avatarCard
          : avatarCard // ignore: cast_nullable_to_non_nullable
              as DataAvatarCardModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardAlbumResponseModelImpl implements _CardAlbumResponseModel {
  const _$CardAlbumResponseModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "role") this.role,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "level") this.level,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "publishedAt") this.publishedAt,
      @JsonKey(name: "users") final List<UserDataResponseModel>? users,
      @JsonKey(name: "avatar_card") this.avatarCard,
      @JsonKey(name: "status") this.status})
      : _users = users;

  factory _$CardAlbumResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardAlbumResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
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
  final List<UserDataResponseModel>? _users;
  @override
  @JsonKey(name: "users")
  List<UserDataResponseModel>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "avatar_card")
  final DataAvatarCardModel? avatarCard;
  @override
  @JsonKey(name: "status")
  final String? status;

  @override
  String toString() {
    return 'CardAlbumResponseModel(id: $id, name: $name, role: $role, description: $description, level: $level, createdAt: $createdAt, updatedAt: $updatedAt, publishedAt: $publishedAt, users: $users, avatarCard: $avatarCard, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardAlbumResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
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
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.avatarCard, avatarCard) ||
                other.avatarCard == avatarCard) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      role,
      description,
      level,
      createdAt,
      updatedAt,
      publishedAt,
      const DeepCollectionEquality().hash(_users),
      avatarCard,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardAlbumResponseModelImplCopyWith<_$CardAlbumResponseModelImpl>
      get copyWith => __$$CardAlbumResponseModelImplCopyWithImpl<
          _$CardAlbumResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardAlbumResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CardAlbumResponseModel implements CardAlbumResponseModel {
  const factory _CardAlbumResponseModel(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "role") final String? role,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "level") final String? level,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt,
          @JsonKey(name: "publishedAt") final DateTime? publishedAt,
          @JsonKey(name: "users") final List<UserDataResponseModel>? users,
          @JsonKey(name: "avatar_card") final DataAvatarCardModel? avatarCard,
          @JsonKey(name: "status") final String? status}) =
      _$CardAlbumResponseModelImpl;

  factory _CardAlbumResponseModel.fromJson(Map<String, dynamic> json) =
      _$CardAlbumResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
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
  @JsonKey(name: "users")
  List<UserDataResponseModel>? get users;
  @override
  @JsonKey(name: "avatar_card")
  DataAvatarCardModel? get avatarCard;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$CardAlbumResponseModelImplCopyWith<_$CardAlbumResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataAvatarCardModel _$DataAvatarCardModelFromJson(Map<String, dynamic> json) {
  return _DataAvatarCardModel.fromJson(json);
}

/// @nodoc
mixin _$DataAvatarCardModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
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
  DataFormatsAvatarCardModel? get formats => throw _privateConstructorUsedError;
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
  @JsonKey(name: "folderPath")
  String? get folderPath => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "isUrlSigned")
  bool? get isUrlSigned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataAvatarCardModelCopyWith<DataAvatarCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataAvatarCardModelCopyWith<$Res> {
  factory $DataAvatarCardModelCopyWith(
          DataAvatarCardModel value, $Res Function(DataAvatarCardModel) then) =
      _$DataAvatarCardModelCopyWithImpl<$Res, DataAvatarCardModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "alternativeText") dynamic alternativeText,
      @JsonKey(name: "caption") dynamic caption,
      @JsonKey(name: "width") int? width,
      @JsonKey(name: "height") int? height,
      @JsonKey(name: "formats") DataFormatsAvatarCardModel? formats,
      @JsonKey(name: "hash") String? hash,
      @JsonKey(name: "ext") String? ext,
      @JsonKey(name: "mime") String? mime,
      @JsonKey(name: "size") double? size,
      @JsonKey(name: "url") String? url,
      @JsonKey(name: "previewUrl") dynamic previewUrl,
      @JsonKey(name: "provider") String? provider,
      @JsonKey(name: "provider_metadata") dynamic providerMetadata,
      @JsonKey(name: "folderPath") String? folderPath,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "isUrlSigned") bool? isUrlSigned});

  $DataFormatsAvatarCardModelCopyWith<$Res>? get formats;
}

/// @nodoc
class _$DataAvatarCardModelCopyWithImpl<$Res, $Val extends DataAvatarCardModel>
    implements $DataAvatarCardModelCopyWith<$Res> {
  _$DataAvatarCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
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
    Object? folderPath = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isUrlSigned = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as DataFormatsAvatarCardModel?,
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
      folderPath: freezed == folderPath
          ? _value.folderPath
          : folderPath // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $DataFormatsAvatarCardModelCopyWith<$Res>? get formats {
    if (_value.formats == null) {
      return null;
    }

    return $DataFormatsAvatarCardModelCopyWith<$Res>(_value.formats!, (value) {
      return _then(_value.copyWith(formats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataAvatarCardModelImplCopyWith<$Res>
    implements $DataAvatarCardModelCopyWith<$Res> {
  factory _$$DataAvatarCardModelImplCopyWith(_$DataAvatarCardModelImpl value,
          $Res Function(_$DataAvatarCardModelImpl) then) =
      __$$DataAvatarCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "alternativeText") dynamic alternativeText,
      @JsonKey(name: "caption") dynamic caption,
      @JsonKey(name: "width") int? width,
      @JsonKey(name: "height") int? height,
      @JsonKey(name: "formats") DataFormatsAvatarCardModel? formats,
      @JsonKey(name: "hash") String? hash,
      @JsonKey(name: "ext") String? ext,
      @JsonKey(name: "mime") String? mime,
      @JsonKey(name: "size") double? size,
      @JsonKey(name: "url") String? url,
      @JsonKey(name: "previewUrl") dynamic previewUrl,
      @JsonKey(name: "provider") String? provider,
      @JsonKey(name: "provider_metadata") dynamic providerMetadata,
      @JsonKey(name: "folderPath") String? folderPath,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "isUrlSigned") bool? isUrlSigned});

  @override
  $DataFormatsAvatarCardModelCopyWith<$Res>? get formats;
}

/// @nodoc
class __$$DataAvatarCardModelImplCopyWithImpl<$Res>
    extends _$DataAvatarCardModelCopyWithImpl<$Res, _$DataAvatarCardModelImpl>
    implements _$$DataAvatarCardModelImplCopyWith<$Res> {
  __$$DataAvatarCardModelImplCopyWithImpl(_$DataAvatarCardModelImpl _value,
      $Res Function(_$DataAvatarCardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
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
    Object? folderPath = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isUrlSigned = freezed,
  }) {
    return _then(_$DataAvatarCardModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as DataFormatsAvatarCardModel?,
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
      folderPath: freezed == folderPath
          ? _value.folderPath
          : folderPath // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$DataAvatarCardModelImpl implements _DataAvatarCardModel {
  const _$DataAvatarCardModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
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
      @JsonKey(name: "folderPath") this.folderPath,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "isUrlSigned") this.isUrlSigned});

  factory _$DataAvatarCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataAvatarCardModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
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
  final DataFormatsAvatarCardModel? formats;
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
  @JsonKey(name: "folderPath")
  final String? folderPath;
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
    return 'DataAvatarCardModel(id: $id, name: $name, alternativeText: $alternativeText, caption: $caption, width: $width, height: $height, formats: $formats, hash: $hash, ext: $ext, mime: $mime, size: $size, url: $url, previewUrl: $previewUrl, provider: $provider, providerMetadata: $providerMetadata, folderPath: $folderPath, createdAt: $createdAt, updatedAt: $updatedAt, isUrlSigned: $isUrlSigned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataAvatarCardModelImpl &&
            (identical(other.id, id) || other.id == id) &&
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
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
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
        folderPath,
        createdAt,
        updatedAt,
        isUrlSigned
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataAvatarCardModelImplCopyWith<_$DataAvatarCardModelImpl> get copyWith =>
      __$$DataAvatarCardModelImplCopyWithImpl<_$DataAvatarCardModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataAvatarCardModelImplToJson(
      this,
    );
  }
}

abstract class _DataAvatarCardModel implements DataAvatarCardModel {
  const factory _DataAvatarCardModel(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "alternativeText") final dynamic alternativeText,
          @JsonKey(name: "caption") final dynamic caption,
          @JsonKey(name: "width") final int? width,
          @JsonKey(name: "height") final int? height,
          @JsonKey(name: "formats") final DataFormatsAvatarCardModel? formats,
          @JsonKey(name: "hash") final String? hash,
          @JsonKey(name: "ext") final String? ext,
          @JsonKey(name: "mime") final String? mime,
          @JsonKey(name: "size") final double? size,
          @JsonKey(name: "url") final String? url,
          @JsonKey(name: "previewUrl") final dynamic previewUrl,
          @JsonKey(name: "provider") final String? provider,
          @JsonKey(name: "provider_metadata") final dynamic providerMetadata,
          @JsonKey(name: "folderPath") final String? folderPath,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt,
          @JsonKey(name: "isUrlSigned") final bool? isUrlSigned}) =
      _$DataAvatarCardModelImpl;

  factory _DataAvatarCardModel.fromJson(Map<String, dynamic> json) =
      _$DataAvatarCardModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
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
  DataFormatsAvatarCardModel? get formats;
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
  @JsonKey(name: "folderPath")
  String? get folderPath;
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
  _$$DataAvatarCardModelImplCopyWith<_$DataAvatarCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataFormatsAvatarCardModel _$DataFormatsAvatarCardModelFromJson(
    Map<String, dynamic> json) {
  return _DataFormatsAvatarCardModel.fromJson(json);
}

/// @nodoc
mixin _$DataFormatsAvatarCardModel {
  @JsonKey(name: "small")
  DataSizeFormatsAvatarCardModel? get small =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail")
  DataSizeFormatsAvatarCardModel? get thumbnail =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataFormatsAvatarCardModelCopyWith<DataFormatsAvatarCardModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataFormatsAvatarCardModelCopyWith<$Res> {
  factory $DataFormatsAvatarCardModelCopyWith(DataFormatsAvatarCardModel value,
          $Res Function(DataFormatsAvatarCardModel) then) =
      _$DataFormatsAvatarCardModelCopyWithImpl<$Res,
          DataFormatsAvatarCardModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "small") DataSizeFormatsAvatarCardModel? small,
      @JsonKey(name: "thumbnail") DataSizeFormatsAvatarCardModel? thumbnail});

  $DataSizeFormatsAvatarCardModelCopyWith<$Res>? get small;
  $DataSizeFormatsAvatarCardModelCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class _$DataFormatsAvatarCardModelCopyWithImpl<$Res,
        $Val extends DataFormatsAvatarCardModel>
    implements $DataFormatsAvatarCardModelCopyWith<$Res> {
  _$DataFormatsAvatarCardModelCopyWithImpl(this._value, this._then);

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
              as DataSizeFormatsAvatarCardModel?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as DataSizeFormatsAvatarCardModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataSizeFormatsAvatarCardModelCopyWith<$Res>? get small {
    if (_value.small == null) {
      return null;
    }

    return $DataSizeFormatsAvatarCardModelCopyWith<$Res>(_value.small!,
        (value) {
      return _then(_value.copyWith(small: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DataSizeFormatsAvatarCardModelCopyWith<$Res>? get thumbnail {
    if (_value.thumbnail == null) {
      return null;
    }

    return $DataSizeFormatsAvatarCardModelCopyWith<$Res>(_value.thumbnail!,
        (value) {
      return _then(_value.copyWith(thumbnail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataFormatsAvatarCardModelImplCopyWith<$Res>
    implements $DataFormatsAvatarCardModelCopyWith<$Res> {
  factory _$$DataFormatsAvatarCardModelImplCopyWith(
          _$DataFormatsAvatarCardModelImpl value,
          $Res Function(_$DataFormatsAvatarCardModelImpl) then) =
      __$$DataFormatsAvatarCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "small") DataSizeFormatsAvatarCardModel? small,
      @JsonKey(name: "thumbnail") DataSizeFormatsAvatarCardModel? thumbnail});

  @override
  $DataSizeFormatsAvatarCardModelCopyWith<$Res>? get small;
  @override
  $DataSizeFormatsAvatarCardModelCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class __$$DataFormatsAvatarCardModelImplCopyWithImpl<$Res>
    extends _$DataFormatsAvatarCardModelCopyWithImpl<$Res,
        _$DataFormatsAvatarCardModelImpl>
    implements _$$DataFormatsAvatarCardModelImplCopyWith<$Res> {
  __$$DataFormatsAvatarCardModelImplCopyWithImpl(
      _$DataFormatsAvatarCardModelImpl _value,
      $Res Function(_$DataFormatsAvatarCardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$DataFormatsAvatarCardModelImpl(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as DataSizeFormatsAvatarCardModel?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as DataSizeFormatsAvatarCardModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataFormatsAvatarCardModelImpl implements _DataFormatsAvatarCardModel {
  const _$DataFormatsAvatarCardModelImpl(
      {@JsonKey(name: "small") this.small,
      @JsonKey(name: "thumbnail") this.thumbnail});

  factory _$DataFormatsAvatarCardModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DataFormatsAvatarCardModelImplFromJson(json);

  @override
  @JsonKey(name: "small")
  final DataSizeFormatsAvatarCardModel? small;
  @override
  @JsonKey(name: "thumbnail")
  final DataSizeFormatsAvatarCardModel? thumbnail;

  @override
  String toString() {
    return 'DataFormatsAvatarCardModel(small: $small, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataFormatsAvatarCardModelImpl &&
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
  _$$DataFormatsAvatarCardModelImplCopyWith<_$DataFormatsAvatarCardModelImpl>
      get copyWith => __$$DataFormatsAvatarCardModelImplCopyWithImpl<
          _$DataFormatsAvatarCardModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataFormatsAvatarCardModelImplToJson(
      this,
    );
  }
}

abstract class _DataFormatsAvatarCardModel
    implements DataFormatsAvatarCardModel {
  const factory _DataFormatsAvatarCardModel(
          {@JsonKey(name: "small") final DataSizeFormatsAvatarCardModel? small,
          @JsonKey(name: "thumbnail")
          final DataSizeFormatsAvatarCardModel? thumbnail}) =
      _$DataFormatsAvatarCardModelImpl;

  factory _DataFormatsAvatarCardModel.fromJson(Map<String, dynamic> json) =
      _$DataFormatsAvatarCardModelImpl.fromJson;

  @override
  @JsonKey(name: "small")
  DataSizeFormatsAvatarCardModel? get small;
  @override
  @JsonKey(name: "thumbnail")
  DataSizeFormatsAvatarCardModel? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$DataFormatsAvatarCardModelImplCopyWith<_$DataFormatsAvatarCardModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataSizeFormatsAvatarCardModel _$DataSizeFormatsAvatarCardModelFromJson(
    Map<String, dynamic> json) {
  return _DataSizeFormatsAvatarCardModel.fromJson(json);
}

/// @nodoc
mixin _$DataSizeFormatsAvatarCardModel {
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
  $DataSizeFormatsAvatarCardModelCopyWith<DataSizeFormatsAvatarCardModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSizeFormatsAvatarCardModelCopyWith<$Res> {
  factory $DataSizeFormatsAvatarCardModelCopyWith(
          DataSizeFormatsAvatarCardModel value,
          $Res Function(DataSizeFormatsAvatarCardModel) then) =
      _$DataSizeFormatsAvatarCardModelCopyWithImpl<$Res,
          DataSizeFormatsAvatarCardModel>;
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
class _$DataSizeFormatsAvatarCardModelCopyWithImpl<$Res,
        $Val extends DataSizeFormatsAvatarCardModel>
    implements $DataSizeFormatsAvatarCardModelCopyWith<$Res> {
  _$DataSizeFormatsAvatarCardModelCopyWithImpl(this._value, this._then);

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
abstract class _$$DataSizeFormatsAvatarCardModelImplCopyWith<$Res>
    implements $DataSizeFormatsAvatarCardModelCopyWith<$Res> {
  factory _$$DataSizeFormatsAvatarCardModelImplCopyWith(
          _$DataSizeFormatsAvatarCardModelImpl value,
          $Res Function(_$DataSizeFormatsAvatarCardModelImpl) then) =
      __$$DataSizeFormatsAvatarCardModelImplCopyWithImpl<$Res>;
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
class __$$DataSizeFormatsAvatarCardModelImplCopyWithImpl<$Res>
    extends _$DataSizeFormatsAvatarCardModelCopyWithImpl<$Res,
        _$DataSizeFormatsAvatarCardModelImpl>
    implements _$$DataSizeFormatsAvatarCardModelImplCopyWith<$Res> {
  __$$DataSizeFormatsAvatarCardModelImplCopyWithImpl(
      _$DataSizeFormatsAvatarCardModelImpl _value,
      $Res Function(_$DataSizeFormatsAvatarCardModelImpl) _then)
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
    return _then(_$DataSizeFormatsAvatarCardModelImpl(
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
class _$DataSizeFormatsAvatarCardModelImpl
    implements _DataSizeFormatsAvatarCardModel {
  const _$DataSizeFormatsAvatarCardModelImpl(
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

  factory _$DataSizeFormatsAvatarCardModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DataSizeFormatsAvatarCardModelImplFromJson(json);

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
    return 'DataSizeFormatsAvatarCardModel(ext: $ext, url: $url, hash: $hash, mime: $mime, name: $name, path: $path, size: $size, width: $width, height: $height, isUrlSigned: $isUrlSigned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataSizeFormatsAvatarCardModelImpl &&
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
  _$$DataSizeFormatsAvatarCardModelImplCopyWith<
          _$DataSizeFormatsAvatarCardModelImpl>
      get copyWith => __$$DataSizeFormatsAvatarCardModelImplCopyWithImpl<
          _$DataSizeFormatsAvatarCardModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataSizeFormatsAvatarCardModelImplToJson(
      this,
    );
  }
}

abstract class _DataSizeFormatsAvatarCardModel
    implements DataSizeFormatsAvatarCardModel {
  const factory _DataSizeFormatsAvatarCardModel(
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
      _$DataSizeFormatsAvatarCardModelImpl;

  factory _DataSizeFormatsAvatarCardModel.fromJson(Map<String, dynamic> json) =
      _$DataSizeFormatsAvatarCardModelImpl.fromJson;

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
  _$$DataSizeFormatsAvatarCardModelImplCopyWith<
          _$DataSizeFormatsAvatarCardModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
