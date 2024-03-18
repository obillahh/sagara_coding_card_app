class LeaderboardResponseModel {
    int? status;
    String? message;
    List<LeaderboardDataModel>? data;

    LeaderboardResponseModel({
        this.status,
        this.message,
        this.data,
    });

    factory LeaderboardResponseModel.fromJson(Map<String, dynamic> json) => LeaderboardResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? [] : List<LeaderboardDataModel>.from(json["data"]!.map((x) => LeaderboardDataModel.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class LeaderboardDataModel {
    int? id;
    String? username;
    int? collectionCard;
    AvatarDataModel? avatar;

    LeaderboardDataModel({
        this.id,
        this.username,
        this.collectionCard,
        this.avatar,
    });

    factory LeaderboardDataModel.fromJson(Map<String, dynamic> json) => LeaderboardDataModel(
        id: json["id"],
        username: json["username"],
        collectionCard: json["collection_card"],
        avatar: json["avatar"] == null ? null : AvatarDataModel.fromJson(json["avatar"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "collection_card": collectionCard,
        "avatar": avatar?.toJson(),
    };
}

class AvatarDataModel {
    int? id;
    String? name;
    dynamic alternativeText;
    dynamic caption;
    int? width;
    int? height;
    AvatarDataFormatsModel? formats;
    String? hash;
    String? ext;
    String? mime;
    double? size;
    String? url;
    dynamic previewUrl;
    String? provider;
    dynamic providerMetadata;
    String? folderPath;
    DateTime? createdAt;
    DateTime? updatedAt;

    AvatarDataModel({
        this.id,
        this.name,
        this.alternativeText,
        this.caption,
        this.width,
        this.height,
        this.formats,
        this.hash,
        this.ext,
        this.mime,
        this.size,
        this.url,
        this.previewUrl,
        this.provider,
        this.providerMetadata,
        this.folderPath,
        this.createdAt,
        this.updatedAt,
    });

    factory AvatarDataModel.fromJson(Map<String, dynamic> json) => AvatarDataModel(
        id: json["id"],
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats: json["formats"] == null ? null : AvatarDataFormatsModel.fromJson(json["formats"]),
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"]?.toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata: json["provider_metadata"],
        folderPath: json["folderPath"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "alternativeText": alternativeText,
        "caption": caption,
        "width": width,
        "height": height,
        "formats": formats?.toJson(),
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "size": size,
        "url": url,
        "previewUrl": previewUrl,
        "provider": provider,
        "provider_metadata": providerMetadata,
        "folderPath": folderPath,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
    };
}

class AvatarDataFormatsModel {
    AvatarFormatDataModel? thumbnail;
    AvatarFormatDataModel? small;

    AvatarDataFormatsModel({
        this.thumbnail,
        this.small,
    });

    factory AvatarDataFormatsModel.fromJson(Map<String, dynamic> json) => AvatarDataFormatsModel(
        thumbnail: json["thumbnail"] == null ? null : AvatarFormatDataModel.fromJson(json["thumbnail"]),
        small: json["small"] == null ? null : AvatarFormatDataModel.fromJson(json["small"]),
    );

    Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail?.toJson(),
        "small": small?.toJson(),
    };
}

class AvatarFormatDataModel {
    String? name;
    String? hash;
    String? ext;
    String? mime;
    dynamic path;
    int? width;
    int? height;
    double? size;
    String? url;

    AvatarFormatDataModel({
        this.name,
        this.hash,
        this.ext,
        this.mime,
        this.path,
        this.width,
        this.height,
        this.size,
        this.url,
    });

    factory AvatarFormatDataModel.fromJson(Map<String, dynamic> json) => AvatarFormatDataModel(
        name: json["name"],
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        path: json["path"],
        width: json["width"],
        height: json["height"],
        size: json["size"]?.toDouble(),
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
