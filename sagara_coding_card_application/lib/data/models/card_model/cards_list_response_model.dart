class CardResponseModel {
  List<CardDataModel>? data;
  CardMetaModel? meta;

  CardResponseModel({
    this.data,
    this.meta,
  });

  factory CardResponseModel.fromJson(Map<String, dynamic> json) =>
      CardResponseModel(
        data: json["data"] == null
            ? []
            : List<CardDataModel>.from(
                json["data"]!.map((x) => CardDataModel.fromJson(x))),
        meta:
            json["meta"] == null ? null : CardMetaModel.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "meta": meta?.toJson(),
      };
}

class CardDataModel {
  int? id;
  CardDataAttributesModel? attributes;

  CardDataModel({
    this.id,
    this.attributes,
  });

  factory CardDataModel.fromJson(Map<String, dynamic> json) => CardDataModel(
        id: json["id"],
        attributes: json["attributes"] == null
            ? null
            : CardDataAttributesModel.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes?.toJson(),
      };
}

class CardDataAttributesModel {
  String? name;
  String? role;
  String? description;
  String? level;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? publishedAt;
  AvatarCardModel? avatarCard;

  CardDataAttributesModel({
    this.name,
    this.role,
    this.description,
    this.level,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.avatarCard,
  });

  factory CardDataAttributesModel.fromJson(Map<String, dynamic> json) =>
      CardDataAttributesModel(
        name: json["name"],
        role: json["role"],
        description: json["description"],
        level: json["level"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        publishedAt: json["publishedAt"] == null
            ? null
            : DateTime.parse(json["publishedAt"]),
        avatarCard: json["avatar_card"] == null
            ? null
            : AvatarCardModel.fromJson(json["avatar_card"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "role": role,
        "description": description,
        "level": level,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "publishedAt": publishedAt?.toIso8601String(),
        "avatar_card": avatarCard?.toJson(),
      };
}

class AvatarCardModel {
  AvatarCardDataModel? data;

  AvatarCardModel({
    this.data,
  });

  factory AvatarCardModel.fromJson(Map<String, dynamic> json) =>
      AvatarCardModel(
        data: json["data"] == null
            ? null
            : AvatarCardDataModel.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
      };
}

class AvatarCardDataModel {
  int? id;
  AvatarCardDataAttributesModel? attributes;

  AvatarCardDataModel({
    this.id,
    this.attributes,
  });

  factory AvatarCardDataModel.fromJson(Map<String, dynamic> json) =>
      AvatarCardDataModel(
        id: json["id"],
        attributes: json["attributes"] == null
            ? null
            : AvatarCardDataAttributesModel.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes?.toJson(),
      };
}

class AvatarCardDataAttributesModel {
  String? name;
  dynamic alternativeText;
  dynamic caption;
  int? width;
  int? height;
  AvatarCardDataAttributeFormatsModel? formats;
  String? hash;
  String? ext;
  String? mime;
  double? size;
  String? url;
  dynamic previewUrl;
  String? provider;
  dynamic providerMetadata;
  DateTime? createdAt;
  DateTime? updatedAt;

  AvatarCardDataAttributesModel({
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
    this.createdAt,
    this.updatedAt,
  });

  factory AvatarCardDataAttributesModel.fromJson(Map<String, dynamic> json) =>
      AvatarCardDataAttributesModel(
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats: json["formats"] == null
            ? null
            : AvatarCardDataAttributeFormatsModel.fromJson(json["formats"]),
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"]?.toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata: json["provider_metadata"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
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
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };
}

class AvatarCardDataAttributeFormatsModel {
  FormatDataModel? small;
  FormatDataModel? thumbnail;

  AvatarCardDataAttributeFormatsModel({
    this.small,
    this.thumbnail,
  });

  factory AvatarCardDataAttributeFormatsModel.fromJson(
          Map<String, dynamic> json) =>
      AvatarCardDataAttributeFormatsModel(
        small: json["small"] == null
            ? null
            : FormatDataModel.fromJson(json["small"]),
        thumbnail: json["thumbnail"] == null
            ? null
            : FormatDataModel.fromJson(json["thumbnail"]),
      );

  Map<String, dynamic> toJson() => {
        "small": small?.toJson(),
        "thumbnail": thumbnail?.toJson(),
      };
}

class FormatDataModel {
  String? ext;
  String? url;
  String? hash;
  String? mime;
  String? name;
  dynamic path;
  double? size;
  int? width;
  int? height;

  FormatDataModel({
    this.ext,
    this.url,
    this.hash,
    this.mime,
    this.name,
    this.path,
    this.size,
    this.width,
    this.height,
  });

  factory FormatDataModel.fromJson(Map<String, dynamic> json) =>
      FormatDataModel(
        ext: json["ext"],
        url: json["url"],
        hash: json["hash"],
        mime: json["mime"],
        name: json["name"],
        path: json["path"],
        size: json["size"]?.toDouble(),
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "ext": ext,
        "url": url,
        "hash": hash,
        "mime": mime,
        "name": name,
        "path": path,
        "size": size,
        "width": width,
        "height": height,
      };
}

class CardMetaModel {
  CardPaginationModel? pagination;

  CardMetaModel({
    this.pagination,
  });

  factory CardMetaModel.fromJson(Map<String, dynamic> json) => CardMetaModel(
        pagination: json["pagination"] == null
            ? null
            : CardPaginationModel.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "pagination": pagination?.toJson(),
      };
}

class CardPaginationModel {
  int? page;
  int? pageSize;
  int? pageCount;
  int? total;

  CardPaginationModel({
    this.page,
    this.pageSize,
    this.pageCount,
    this.total,
  });

  factory CardPaginationModel.fromJson(Map<String, dynamic> json) =>
      CardPaginationModel(
        page: json["page"],
        pageSize: json["pageSize"],
        pageCount: json["pageCount"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "pageSize": pageSize,
        "pageCount": pageCount,
        "total": total,
      };
}
