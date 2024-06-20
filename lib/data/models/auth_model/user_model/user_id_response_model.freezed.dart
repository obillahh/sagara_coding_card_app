// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_id_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserIdResponseModel _$UserIdResponseModelFromJson(Map<String, dynamic> json) {
  return _UserIdResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UserIdResponseModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
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
  @JsonKey(name: "avatar")
  UserIdAvatarResponseModel? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserIdResponseModelCopyWith<UserIdResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserIdResponseModelCopyWith<$Res> {
  factory $UserIdResponseModelCopyWith(
          UserIdResponseModel value, $Res Function(UserIdResponseModel) then) =
      _$UserIdResponseModelCopyWithImpl<$Res, UserIdResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "provider") String? provider,
      @JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "blocked") bool? blocked,
      @JsonKey(name: "collection_card") int? collectionCard,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "scores") int? scores,
      @JsonKey(name: "avatar") UserIdAvatarResponseModel? avatar});

  $UserIdAvatarResponseModelCopyWith<$Res>? get avatar;
}

/// @nodoc
class _$UserIdResponseModelCopyWithImpl<$Res, $Val extends UserIdResponseModel>
    implements $UserIdResponseModelCopyWith<$Res> {
  _$UserIdResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? provider = freezed,
    Object? confirmed = freezed,
    Object? blocked = freezed,
    Object? collectionCard = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? scores = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as UserIdAvatarResponseModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIdAvatarResponseModelCopyWith<$Res>? get avatar {
    if (_value.avatar == null) {
      return null;
    }

    return $UserIdAvatarResponseModelCopyWith<$Res>(_value.avatar!, (value) {
      return _then(_value.copyWith(avatar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserIdResponseModelImplCopyWith<$Res>
    implements $UserIdResponseModelCopyWith<$Res> {
  factory _$$UserIdResponseModelImplCopyWith(_$UserIdResponseModelImpl value,
          $Res Function(_$UserIdResponseModelImpl) then) =
      __$$UserIdResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "provider") String? provider,
      @JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "blocked") bool? blocked,
      @JsonKey(name: "collection_card") int? collectionCard,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "scores") int? scores,
      @JsonKey(name: "avatar") UserIdAvatarResponseModel? avatar});

  @override
  $UserIdAvatarResponseModelCopyWith<$Res>? get avatar;
}

/// @nodoc
class __$$UserIdResponseModelImplCopyWithImpl<$Res>
    extends _$UserIdResponseModelCopyWithImpl<$Res, _$UserIdResponseModelImpl>
    implements _$$UserIdResponseModelImplCopyWith<$Res> {
  __$$UserIdResponseModelImplCopyWithImpl(_$UserIdResponseModelImpl _value,
      $Res Function(_$UserIdResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? provider = freezed,
    Object? confirmed = freezed,
    Object? blocked = freezed,
    Object? collectionCard = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? scores = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$UserIdResponseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as UserIdAvatarResponseModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserIdResponseModelImpl implements _UserIdResponseModel {
  const _$UserIdResponseModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "provider") this.provider,
      @JsonKey(name: "confirmed") this.confirmed,
      @JsonKey(name: "blocked") this.blocked,
      @JsonKey(name: "collection_card") this.collectionCard,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "scores") this.scores,
      @JsonKey(name: "avatar") this.avatar});

  factory _$UserIdResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserIdResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
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
  @JsonKey(name: "avatar")
  final UserIdAvatarResponseModel? avatar;

  @override
  String toString() {
    return 'UserIdResponseModel(id: $id, username: $username, email: $email, provider: $provider, confirmed: $confirmed, blocked: $blocked, collectionCard: $collectionCard, createdAt: $createdAt, updatedAt: $updatedAt, scores: $scores, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIdResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
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
            (identical(other.scores, scores) || other.scores == scores) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, email, provider,
      confirmed, blocked, collectionCard, createdAt, updatedAt, scores, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserIdResponseModelImplCopyWith<_$UserIdResponseModelImpl> get copyWith =>
      __$$UserIdResponseModelImplCopyWithImpl<_$UserIdResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserIdResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UserIdResponseModel implements UserIdResponseModel {
  const factory _UserIdResponseModel(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "username") final String? username,
          @JsonKey(name: "email") final String? email,
          @JsonKey(name: "provider") final String? provider,
          @JsonKey(name: "confirmed") final bool? confirmed,
          @JsonKey(name: "blocked") final bool? blocked,
          @JsonKey(name: "collection_card") final int? collectionCard,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt,
          @JsonKey(name: "scores") final int? scores,
          @JsonKey(name: "avatar") final UserIdAvatarResponseModel? avatar}) =
      _$UserIdResponseModelImpl;

  factory _UserIdResponseModel.fromJson(Map<String, dynamic> json) =
      _$UserIdResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
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
  @JsonKey(name: "avatar")
  UserIdAvatarResponseModel? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$UserIdResponseModelImplCopyWith<_$UserIdResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserIdAvatarResponseModel _$UserIdAvatarResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UserIdAvatarResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UserIdAvatarResponseModel {
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
  UserIdAvatarFormatsResponseModel? get formats =>
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
  $UserIdAvatarResponseModelCopyWith<UserIdAvatarResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserIdAvatarResponseModelCopyWith<$Res> {
  factory $UserIdAvatarResponseModelCopyWith(UserIdAvatarResponseModel value,
          $Res Function(UserIdAvatarResponseModel) then) =
      _$UserIdAvatarResponseModelCopyWithImpl<$Res, UserIdAvatarResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "alternativeText") dynamic alternativeText,
      @JsonKey(name: "caption") dynamic caption,
      @JsonKey(name: "width") int? width,
      @JsonKey(name: "height") int? height,
      @JsonKey(name: "formats") UserIdAvatarFormatsResponseModel? formats,
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

  $UserIdAvatarFormatsResponseModelCopyWith<$Res>? get formats;
}

/// @nodoc
class _$UserIdAvatarResponseModelCopyWithImpl<$Res,
        $Val extends UserIdAvatarResponseModel>
    implements $UserIdAvatarResponseModelCopyWith<$Res> {
  _$UserIdAvatarResponseModelCopyWithImpl(this._value, this._then);

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
              as UserIdAvatarFormatsResponseModel?,
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
  $UserIdAvatarFormatsResponseModelCopyWith<$Res>? get formats {
    if (_value.formats == null) {
      return null;
    }

    return $UserIdAvatarFormatsResponseModelCopyWith<$Res>(_value.formats!,
        (value) {
      return _then(_value.copyWith(formats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserIdAvatarResponseModelImplCopyWith<$Res>
    implements $UserIdAvatarResponseModelCopyWith<$Res> {
  factory _$$UserIdAvatarResponseModelImplCopyWith(
          _$UserIdAvatarResponseModelImpl value,
          $Res Function(_$UserIdAvatarResponseModelImpl) then) =
      __$$UserIdAvatarResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "alternativeText") dynamic alternativeText,
      @JsonKey(name: "caption") dynamic caption,
      @JsonKey(name: "width") int? width,
      @JsonKey(name: "height") int? height,
      @JsonKey(name: "formats") UserIdAvatarFormatsResponseModel? formats,
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
  $UserIdAvatarFormatsResponseModelCopyWith<$Res>? get formats;
}

/// @nodoc
class __$$UserIdAvatarResponseModelImplCopyWithImpl<$Res>
    extends _$UserIdAvatarResponseModelCopyWithImpl<$Res,
        _$UserIdAvatarResponseModelImpl>
    implements _$$UserIdAvatarResponseModelImplCopyWith<$Res> {
  __$$UserIdAvatarResponseModelImplCopyWithImpl(
      _$UserIdAvatarResponseModelImpl _value,
      $Res Function(_$UserIdAvatarResponseModelImpl) _then)
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
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isUrlSigned = freezed,
  }) {
    return _then(_$UserIdAvatarResponseModelImpl(
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
              as UserIdAvatarFormatsResponseModel?,
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
class _$UserIdAvatarResponseModelImpl implements _UserIdAvatarResponseModel {
  const _$UserIdAvatarResponseModelImpl(
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
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "isUrlSigned") this.isUrlSigned});

  factory _$UserIdAvatarResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserIdAvatarResponseModelImplFromJson(json);

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
  final UserIdAvatarFormatsResponseModel? formats;
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
    return 'UserIdAvatarResponseModel(id: $id, name: $name, alternativeText: $alternativeText, caption: $caption, width: $width, height: $height, formats: $formats, hash: $hash, ext: $ext, mime: $mime, size: $size, url: $url, previewUrl: $previewUrl, provider: $provider, providerMetadata: $providerMetadata, createdAt: $createdAt, updatedAt: $updatedAt, isUrlSigned: $isUrlSigned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIdAvatarResponseModelImpl &&
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
  _$$UserIdAvatarResponseModelImplCopyWith<_$UserIdAvatarResponseModelImpl>
      get copyWith => __$$UserIdAvatarResponseModelImplCopyWithImpl<
          _$UserIdAvatarResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserIdAvatarResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UserIdAvatarResponseModel implements UserIdAvatarResponseModel {
  const factory _UserIdAvatarResponseModel(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "alternativeText") final dynamic alternativeText,
      @JsonKey(name: "caption") final dynamic caption,
      @JsonKey(name: "width") final int? width,
      @JsonKey(name: "height") final int? height,
      @JsonKey(name: "formats") final UserIdAvatarFormatsResponseModel? formats,
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
      @JsonKey(name: "isUrlSigned")
      final bool? isUrlSigned}) = _$UserIdAvatarResponseModelImpl;

  factory _UserIdAvatarResponseModel.fromJson(Map<String, dynamic> json) =
      _$UserIdAvatarResponseModelImpl.fromJson;

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
  UserIdAvatarFormatsResponseModel? get formats;
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
  _$$UserIdAvatarResponseModelImplCopyWith<_$UserIdAvatarResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserIdAvatarFormatsResponseModel _$UserIdAvatarFormatsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UserIdAvatarFormatsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UserIdAvatarFormatsResponseModel {
  @JsonKey(name: "small")
  UserIdAvatarFormatsSizeResponseModel? get small =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "medium")
  UserIdAvatarFormatsSizeResponseModel? get medium =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail")
  UserIdAvatarFormatsSizeResponseModel? get thumbnail =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserIdAvatarFormatsResponseModelCopyWith<UserIdAvatarFormatsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserIdAvatarFormatsResponseModelCopyWith<$Res> {
  factory $UserIdAvatarFormatsResponseModelCopyWith(
          UserIdAvatarFormatsResponseModel value,
          $Res Function(UserIdAvatarFormatsResponseModel) then) =
      _$UserIdAvatarFormatsResponseModelCopyWithImpl<$Res,
          UserIdAvatarFormatsResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "small") UserIdAvatarFormatsSizeResponseModel? small,
      @JsonKey(name: "medium") UserIdAvatarFormatsSizeResponseModel? medium,
      @JsonKey(name: "thumbnail")
      UserIdAvatarFormatsSizeResponseModel? thumbnail});

  $UserIdAvatarFormatsSizeResponseModelCopyWith<$Res>? get small;
  $UserIdAvatarFormatsSizeResponseModelCopyWith<$Res>? get medium;
  $UserIdAvatarFormatsSizeResponseModelCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class _$UserIdAvatarFormatsResponseModelCopyWithImpl<$Res,
        $Val extends UserIdAvatarFormatsResponseModel>
    implements $UserIdAvatarFormatsResponseModelCopyWith<$Res> {
  _$UserIdAvatarFormatsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? medium = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as UserIdAvatarFormatsSizeResponseModel?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as UserIdAvatarFormatsSizeResponseModel?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as UserIdAvatarFormatsSizeResponseModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIdAvatarFormatsSizeResponseModelCopyWith<$Res>? get small {
    if (_value.small == null) {
      return null;
    }

    return $UserIdAvatarFormatsSizeResponseModelCopyWith<$Res>(_value.small!,
        (value) {
      return _then(_value.copyWith(small: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIdAvatarFormatsSizeResponseModelCopyWith<$Res>? get medium {
    if (_value.medium == null) {
      return null;
    }

    return $UserIdAvatarFormatsSizeResponseModelCopyWith<$Res>(_value.medium!,
        (value) {
      return _then(_value.copyWith(medium: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIdAvatarFormatsSizeResponseModelCopyWith<$Res>? get thumbnail {
    if (_value.thumbnail == null) {
      return null;
    }

    return $UserIdAvatarFormatsSizeResponseModelCopyWith<$Res>(
        _value.thumbnail!, (value) {
      return _then(_value.copyWith(thumbnail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserIdAvatarFormatsResponseModelImplCopyWith<$Res>
    implements $UserIdAvatarFormatsResponseModelCopyWith<$Res> {
  factory _$$UserIdAvatarFormatsResponseModelImplCopyWith(
          _$UserIdAvatarFormatsResponseModelImpl value,
          $Res Function(_$UserIdAvatarFormatsResponseModelImpl) then) =
      __$$UserIdAvatarFormatsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "small") UserIdAvatarFormatsSizeResponseModel? small,
      @JsonKey(name: "medium") UserIdAvatarFormatsSizeResponseModel? medium,
      @JsonKey(name: "thumbnail")
      UserIdAvatarFormatsSizeResponseModel? thumbnail});

  @override
  $UserIdAvatarFormatsSizeResponseModelCopyWith<$Res>? get small;
  @override
  $UserIdAvatarFormatsSizeResponseModelCopyWith<$Res>? get medium;
  @override
  $UserIdAvatarFormatsSizeResponseModelCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class __$$UserIdAvatarFormatsResponseModelImplCopyWithImpl<$Res>
    extends _$UserIdAvatarFormatsResponseModelCopyWithImpl<$Res,
        _$UserIdAvatarFormatsResponseModelImpl>
    implements _$$UserIdAvatarFormatsResponseModelImplCopyWith<$Res> {
  __$$UserIdAvatarFormatsResponseModelImplCopyWithImpl(
      _$UserIdAvatarFormatsResponseModelImpl _value,
      $Res Function(_$UserIdAvatarFormatsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? medium = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$UserIdAvatarFormatsResponseModelImpl(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as UserIdAvatarFormatsSizeResponseModel?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as UserIdAvatarFormatsSizeResponseModel?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as UserIdAvatarFormatsSizeResponseModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserIdAvatarFormatsResponseModelImpl
    implements _UserIdAvatarFormatsResponseModel {
  const _$UserIdAvatarFormatsResponseModelImpl(
      {@JsonKey(name: "small") this.small,
      @JsonKey(name: "medium") this.medium,
      @JsonKey(name: "thumbnail") this.thumbnail});

  factory _$UserIdAvatarFormatsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserIdAvatarFormatsResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "small")
  final UserIdAvatarFormatsSizeResponseModel? small;
  @override
  @JsonKey(name: "medium")
  final UserIdAvatarFormatsSizeResponseModel? medium;
  @override
  @JsonKey(name: "thumbnail")
  final UserIdAvatarFormatsSizeResponseModel? thumbnail;

  @override
  String toString() {
    return 'UserIdAvatarFormatsResponseModel(small: $small, medium: $medium, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIdAvatarFormatsResponseModelImpl &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, medium, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserIdAvatarFormatsResponseModelImplCopyWith<
          _$UserIdAvatarFormatsResponseModelImpl>
      get copyWith => __$$UserIdAvatarFormatsResponseModelImplCopyWithImpl<
          _$UserIdAvatarFormatsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserIdAvatarFormatsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UserIdAvatarFormatsResponseModel
    implements UserIdAvatarFormatsResponseModel {
  const factory _UserIdAvatarFormatsResponseModel(
          {@JsonKey(name: "small")
          final UserIdAvatarFormatsSizeResponseModel? small,
          @JsonKey(name: "medium")
          final UserIdAvatarFormatsSizeResponseModel? medium,
          @JsonKey(name: "thumbnail")
          final UserIdAvatarFormatsSizeResponseModel? thumbnail}) =
      _$UserIdAvatarFormatsResponseModelImpl;

  factory _UserIdAvatarFormatsResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$UserIdAvatarFormatsResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "small")
  UserIdAvatarFormatsSizeResponseModel? get small;
  @override
  @JsonKey(name: "medium")
  UserIdAvatarFormatsSizeResponseModel? get medium;
  @override
  @JsonKey(name: "thumbnail")
  UserIdAvatarFormatsSizeResponseModel? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$UserIdAvatarFormatsResponseModelImplCopyWith<
          _$UserIdAvatarFormatsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserIdAvatarFormatsSizeResponseModel
    _$UserIdAvatarFormatsSizeResponseModelFromJson(Map<String, dynamic> json) {
  return _UserIdAvatarFormatsSizeResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UserIdAvatarFormatsSizeResponseModel {
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
  $UserIdAvatarFormatsSizeResponseModelCopyWith<
          UserIdAvatarFormatsSizeResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserIdAvatarFormatsSizeResponseModelCopyWith<$Res> {
  factory $UserIdAvatarFormatsSizeResponseModelCopyWith(
          UserIdAvatarFormatsSizeResponseModel value,
          $Res Function(UserIdAvatarFormatsSizeResponseModel) then) =
      _$UserIdAvatarFormatsSizeResponseModelCopyWithImpl<$Res,
          UserIdAvatarFormatsSizeResponseModel>;
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
class _$UserIdAvatarFormatsSizeResponseModelCopyWithImpl<$Res,
        $Val extends UserIdAvatarFormatsSizeResponseModel>
    implements $UserIdAvatarFormatsSizeResponseModelCopyWith<$Res> {
  _$UserIdAvatarFormatsSizeResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$UserIdAvatarFormatsSizeResponseModelImplCopyWith<$Res>
    implements $UserIdAvatarFormatsSizeResponseModelCopyWith<$Res> {
  factory _$$UserIdAvatarFormatsSizeResponseModelImplCopyWith(
          _$UserIdAvatarFormatsSizeResponseModelImpl value,
          $Res Function(_$UserIdAvatarFormatsSizeResponseModelImpl) then) =
      __$$UserIdAvatarFormatsSizeResponseModelImplCopyWithImpl<$Res>;
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
class __$$UserIdAvatarFormatsSizeResponseModelImplCopyWithImpl<$Res>
    extends _$UserIdAvatarFormatsSizeResponseModelCopyWithImpl<$Res,
        _$UserIdAvatarFormatsSizeResponseModelImpl>
    implements _$$UserIdAvatarFormatsSizeResponseModelImplCopyWith<$Res> {
  __$$UserIdAvatarFormatsSizeResponseModelImplCopyWithImpl(
      _$UserIdAvatarFormatsSizeResponseModelImpl _value,
      $Res Function(_$UserIdAvatarFormatsSizeResponseModelImpl) _then)
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
    return _then(_$UserIdAvatarFormatsSizeResponseModelImpl(
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
class _$UserIdAvatarFormatsSizeResponseModelImpl
    implements _UserIdAvatarFormatsSizeResponseModel {
  const _$UserIdAvatarFormatsSizeResponseModelImpl(
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

  factory _$UserIdAvatarFormatsSizeResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserIdAvatarFormatsSizeResponseModelImplFromJson(json);

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
    return 'UserIdAvatarFormatsSizeResponseModel(ext: $ext, url: $url, hash: $hash, mime: $mime, name: $name, path: $path, size: $size, width: $width, height: $height, isUrlSigned: $isUrlSigned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIdAvatarFormatsSizeResponseModelImpl &&
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
  _$$UserIdAvatarFormatsSizeResponseModelImplCopyWith<
          _$UserIdAvatarFormatsSizeResponseModelImpl>
      get copyWith => __$$UserIdAvatarFormatsSizeResponseModelImplCopyWithImpl<
          _$UserIdAvatarFormatsSizeResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserIdAvatarFormatsSizeResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UserIdAvatarFormatsSizeResponseModel
    implements UserIdAvatarFormatsSizeResponseModel {
  const factory _UserIdAvatarFormatsSizeResponseModel(
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
      _$UserIdAvatarFormatsSizeResponseModelImpl;

  factory _UserIdAvatarFormatsSizeResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$UserIdAvatarFormatsSizeResponseModelImpl.fromJson;

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
  _$$UserIdAvatarFormatsSizeResponseModelImplCopyWith<
          _$UserIdAvatarFormatsSizeResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
