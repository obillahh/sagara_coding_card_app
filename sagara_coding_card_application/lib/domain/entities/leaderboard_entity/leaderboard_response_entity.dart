class LeaderboardResponseEntity {
  final int status;
  final String message;
  final List<LeaderboardDataEntity> data;

  LeaderboardResponseEntity({
    required this.status,
    required this.message,
    required this.data,
  });

  factory LeaderboardResponseEntity.fromJson(Map<String, dynamic> json) =>
      LeaderboardResponseEntity(
        status: json["status"],
        message: json["message"],
        data: List<LeaderboardDataEntity>.from(json["data"].map((x) => LeaderboardDataEntity.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class LeaderboardDataEntity {
  final int id;
  final String username;
  final int collectionCard;
  final AvatarDataEntity avatar;

  LeaderboardDataEntity({
    required this.id,
    required this.username,
    required this.collectionCard,
    required this.avatar,
  });

  factory LeaderboardDataEntity.fromJson(Map<String, dynamic> json) => LeaderboardDataEntity(
        id: json["id"],
        username: json["username"],
        collectionCard: json["collection_card"],
        avatar: AvatarDataEntity.fromJson(json["avatar"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "collection_card": collectionCard,
        "avatar": avatar.toJson(),
      };
}

class AvatarDataEntity {
  final int id;
  final String name;
  final dynamic alternativeText;
  final dynamic caption;
  final int width;
  final int height;
  final AvatarDataFormatsEntity formats;
  final String hash;
  final String ext;
  final String mime;
  final double size;
  final String url;
  final dynamic previewUrl;
  final String provider;
  final dynamic providerMetadata;
  final String folderPath;
  final DateTime createdAt;
  final DateTime updatedAt;

  AvatarDataEntity({
    required this.id,
    required this.name,
    required this.alternativeText,
    required this.caption,
    required this.width,
    required this.height,
    required this.formats,
    required this.hash,
    required this.ext,
    required this.mime,
    required this.size,
    required this.url,
    required this.previewUrl,
    required this.provider,
    required this.providerMetadata,
    required this.folderPath,
    required this.createdAt,
    required this.updatedAt,
  });

  factory AvatarDataEntity.fromJson(Map<String, dynamic> json) => AvatarDataEntity(
        id: json["id"],
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats: AvatarDataFormatsEntity.fromJson(json["formats"]),
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"].toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata: json["provider_metadata"],
        folderPath: json["folderPath"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "alternativeText": alternativeText,
        "caption": caption,
        "width": width,
        "height": height,
        "formats": formats.toJson(),
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "size": size,
        "url": url,
        "previewUrl": previewUrl,
        "provider": provider,
        "provider_metadata": providerMetadata,
        "folderPath": folderPath,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}

class AvatarDataFormatsEntity {
  final AvatarFormatDataEntity thumbnail;
  final AvatarFormatDataEntity small;

  AvatarDataFormatsEntity({
    required this.thumbnail,
    required this.small,
  });

  factory AvatarDataFormatsEntity.fromJson(Map<String, dynamic> json) => AvatarDataFormatsEntity(
        thumbnail: AvatarFormatDataEntity.fromJson(json["thumbnail"]),
        small: AvatarFormatDataEntity.fromJson(json["small"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail.toJson(),
        "small": small.toJson(),
      };
}

class AvatarFormatDataEntity {
  final String name;
  final String hash;
  final String ext;
  final String mime;
  final dynamic path;
  final int width;
  final int height;
  final double size;
  final String url;

  AvatarFormatDataEntity({
    required this.name,
    required this.hash,
    required this.ext,
    required this.mime,
    required this.path,
    required this.width,
    required this.height,
    required this.size,
    required this.url,
  });

  factory AvatarFormatDataEntity.fromJson(Map<String, dynamic> json) => AvatarFormatDataEntity(
        name: json["name"],
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        path: json["path"],
        width: json["width"],
        height: json["height"],
        size: json["size"].toDouble(),
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "path": path,
        "width": width,
        "height": height,
        "size": size,
        "url": url,
      };
}
