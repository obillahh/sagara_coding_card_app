class CardResponseEntity {
  final List<CardListDataEntity> data;
  final CardMetaEntity meta;

  CardResponseEntity({
    required this.data,
    required this.meta,
  });

  factory CardResponseEntity.fromJson(Map<String, dynamic> json) =>
      CardResponseEntity(
        data: List<CardListDataEntity>.from(
            json["data"].map((x) => CardListDataEntity.fromJson(x))),
        meta: CardMetaEntity.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta.toJson(),
      };
}

class CardListDataEntity {
  final int id;
  final CardDataAttributesEntity attributes;

  CardListDataEntity({
    required this.id,
    required this.attributes,
  });

  factory CardListDataEntity.fromJson(Map<String, dynamic> json) =>
      CardListDataEntity(
        id: json["id"],
        attributes: CardDataAttributesEntity.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class CardDataAttributesEntity {
  final String name;
  final String role;
  final String description;
  final String level;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime publishedAt;
  final AvatarCardEntity avatarCard;

  CardDataAttributesEntity({
    required this.name,
    required this.role,
    required this.description,
    required this.level,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.avatarCard,
  });

  factory CardDataAttributesEntity.fromJson(Map<String, dynamic> json) =>
      CardDataAttributesEntity(
        name: json["name"],
        role: json["role"],
        description: json["description"],
        level: json["level"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        avatarCard: AvatarCardEntity.fromJson(json["avatar_card"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "role": role,
        "description": description,
        "level": level,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
        "avatar_card": avatarCard.toJson(),
      };
}

class AvatarCardEntity {
  final AvatarCardDataEntity data;

  AvatarCardEntity({
    required this.data,
  });

  factory AvatarCardEntity.fromJson(Map<String, dynamic> json) =>
      AvatarCardEntity(
        data: AvatarCardDataEntity.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class AvatarCardDataEntity {
  final int id;
  final AvatarCardDataAttributesEntity attributes;

  AvatarCardDataEntity({
    required this.id,
    required this.attributes,
  });

  factory AvatarCardDataEntity.fromJson(Map<String, dynamic> json) =>
      AvatarCardDataEntity(
        id: json["id"],
        attributes: AvatarCardDataAttributesEntity.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class AvatarCardDataAttributesEntity {
  final String name;
  final dynamic alternativeText;
  final dynamic caption;
  final int width;
  final int height;
  final AvatarCardDataAttributeFormatsEntity formats;
  final String hash;
  final String ext;
  final String mime;
  final double size;
  final String url;
  final dynamic previewUrl;
  final String provider;
  final dynamic providerMetadata;
  final DateTime createdAt;
  final DateTime updatedAt;

  AvatarCardDataAttributesEntity({
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
    required this.createdAt,
    required this.updatedAt,
  });

  factory AvatarCardDataAttributesEntity.fromJson(Map<String, dynamic> json) =>
      AvatarCardDataAttributesEntity(
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats: AvatarCardDataAttributeFormatsEntity.fromJson(json["formats"]),
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"].toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata: json["provider_metadata"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
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
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}

class AvatarCardDataAttributeFormatsEntity {
  final FormatDataEntity small;
  final FormatDataEntity thumbnail;

  AvatarCardDataAttributeFormatsEntity({
    required this.small,
    required this.thumbnail,
  });

  factory AvatarCardDataAttributeFormatsEntity.fromJson(
          Map<String, dynamic> json) =>
      AvatarCardDataAttributeFormatsEntity(
        small: FormatDataEntity.fromJson(json["small"]),
        thumbnail: FormatDataEntity.fromJson(json["thumbnail"]),
      );

  Map<String, dynamic> toJson() => {
        "small": small.toJson(),
        "thumbnail": thumbnail.toJson(),
      };
}

class FormatDataEntity {
  final String ext;
  final String url;
  final String hash;
  final String mime;
  final String name;
  final dynamic path;
  final double size;
  final int width;
  final int height;

  FormatDataEntity({
    required this.ext,
    required this.url,
    required this.hash,
    required this.mime,
    required this.name,
    required this.path,
    required this.size,
    required this.width,
    required this.height,
  });

  factory FormatDataEntity.fromJson(Map<String, dynamic> json) =>
      FormatDataEntity(
        ext: json["ext"],
        url: json["url"],
        hash: json["hash"],
        mime: json["mime"],
        name: json["name"],
        path: json["path"],
        size: json["size"].toDouble(),
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

class CardMetaEntity {
  final CardPaginationEntity pagination;

  CardMetaEntity({
    required this.pagination,
  });

  factory CardMetaEntity.fromJson(Map<String, dynamic> json) => CardMetaEntity(
        pagination: CardPaginationEntity.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "pagination": pagination.toJson(),
      };
}

class CardPaginationEntity {
  final int page;
  final int pageSize;
  final int pageCount;
  final int total;

  CardPaginationEntity({
    required this.page,
    required this.pageSize,
    required this.pageCount,
    required this.total,
  });

  factory CardPaginationEntity.fromJson(Map<String, dynamic> json) =>
      CardPaginationEntity(
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
