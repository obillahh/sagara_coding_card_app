class CardIdResponseEntity {
  final CardIdResponseDataEntity data;
  final CardIdResponseMetaEntity meta;

  CardIdResponseEntity({
    required this.data,
    required this.meta,
  });

  factory CardIdResponseEntity.fromJson(Map<String, dynamic> json) =>
      CardIdResponseEntity(
        data: CardIdResponseDataEntity.fromJson(json["data"]),
        meta: CardIdResponseMetaEntity.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "meta": meta.toJson(),
      };
}

class CardIdResponseDataEntity {
  final int id;
  final CardIdDataAttributesEntity attributes;

  CardIdResponseDataEntity({
    required this.id,
    required this.attributes,
  });

  factory CardIdResponseDataEntity.fromJson(Map<String, dynamic> json) =>
      CardIdResponseDataEntity(
        id: json["id"],
        attributes: CardIdDataAttributesEntity.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class CardIdDataAttributesEntity {
  final String name;
  final String role;
  final String description;
  final String level;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime publishedAt;
  final AvatarCardIdResponseEntity avatarCard;

  CardIdDataAttributesEntity({
    required this.name,
    required this.role,
    required this.description,
    required this.level,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.avatarCard,
  });

  factory CardIdDataAttributesEntity.fromJson(Map<String, dynamic> json) =>
      CardIdDataAttributesEntity(
        name: json["name"],
        role: json["role"],
        description: json["description"],
        level: json["level"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        avatarCard: AvatarCardIdResponseEntity.fromJson(json["avatar_card"]),
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

class AvatarCardIdResponseEntity {
  final AvatarCardIdDataModel data;

  AvatarCardIdResponseEntity({
    required this.data,
  });

  factory AvatarCardIdResponseEntity.fromJson(Map<String, dynamic> json) =>
      AvatarCardIdResponseEntity(
        data: AvatarCardIdDataModel.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class AvatarCardIdDataModel {
  final int id;
  final AvatarCardIdAttributesEntity attributes;

  AvatarCardIdDataModel({
    required this.id,
    required this.attributes,
  });

  factory AvatarCardIdDataModel.fromJson(Map<String, dynamic> json) =>
      AvatarCardIdDataModel(
        id: json["id"],
        attributes: AvatarCardIdAttributesEntity.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class AvatarCardIdAttributesEntity {
  final String name;
  final dynamic alternativeText;
  final dynamic caption;
  final int width;
  final int height;
  final FormatsIdEntity formats;
  final String hash;
  final String ext;
  final String mime;
  final double size;
  final String url;
  final dynamic previewUrl;
  final String provider;
  final ProviderMetadataEntity providerMetadata;
  final DateTime createdAt;
  final DateTime updatedAt;

  AvatarCardIdAttributesEntity({
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

  factory AvatarCardIdAttributesEntity.fromJson(Map<String, dynamic> json) =>
      AvatarCardIdAttributesEntity(
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats: FormatsIdEntity.fromJson(json["formats"]),
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"].toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata:
            ProviderMetadataEntity.fromJson(json["provider_metadata"]),
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
        "provider_metadata": providerMetadata.toJson(),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}

class FormatsIdEntity {
  final FormatIdDataEntity small;
  final FormatIdDataEntity thumbnail;

  FormatsIdEntity({
    required this.small,
    required this.thumbnail,
  });

  factory FormatsIdEntity.fromJson(Map<String, dynamic> json) =>
      FormatsIdEntity(
        small: FormatIdDataEntity.fromJson(json["small"]),
        thumbnail: FormatIdDataEntity.fromJson(json["thumbnail"]),
      );

  Map<String, dynamic> toJson() => {
        "small": small.toJson(),
        "thumbnail": thumbnail.toJson(),
      };
}

class FormatIdDataEntity {
  final String ext;
  final String url;
  final String hash;
  final String mime;
  final String name;
  final dynamic path;
  final double size;
  final int width;
  final int height;
  final ProviderMetadataEntity providerMetadata;

  FormatIdDataEntity({
    required this.ext,
    required this.url,
    required this.hash,
    required this.mime,
    required this.name,
    required this.path,
    required this.size,
    required this.width,
    required this.height,
    required this.providerMetadata,
  });

  factory FormatIdDataEntity.fromJson(Map<String, dynamic> json) =>
      FormatIdDataEntity(
        ext: json["ext"],
        url: json["url"],
        hash: json["hash"],
        mime: json["mime"],
        name: json["name"],
        path: json["path"],
        size: json["size"].toDouble(),
        width: json["width"],
        height: json["height"],
        providerMetadata:
            ProviderMetadataEntity.fromJson(json["provider_metadata"]),
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
        "provider_metadata": providerMetadata.toJson(),
      };
}

class ProviderMetadataEntity {
  final String publicId;
  final String resourceType;

  ProviderMetadataEntity({
    required this.publicId,
    required this.resourceType,
  });

  factory ProviderMetadataEntity.fromJson(Map<String, dynamic> json) =>
      ProviderMetadataEntity(
        publicId: json["public_id"],
        resourceType: json["resource_type"],
      );

  Map<String, dynamic> toJson() => {
        "public_id": publicId,
        "resource_type": resourceType,
      };
}

class CardIdResponseMetaEntity {
  CardIdResponseMetaEntity();

  factory CardIdResponseMetaEntity.fromJson(Map<String, dynamic> json) =>
      CardIdResponseMetaEntity();

  Map<String, dynamic> toJson() => {};
}
