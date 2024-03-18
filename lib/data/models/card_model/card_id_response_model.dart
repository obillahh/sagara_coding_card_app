class CardIdResponseModel {
  CardIdResponseDataModel? data;
  CardIdResponseMetaModel? meta;

  CardIdResponseModel({
    this.data,
    this.meta,
  });

  factory CardIdResponseModel.fromJson(Map<String, dynamic> json) =>
      CardIdResponseModel(
        data: json["data"] == null
            ? null
            : CardIdResponseDataModel.fromJson(json["data"]),
        meta: json["meta"] == null
            ? null
            : CardIdResponseMetaModel.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "meta": meta?.toJson(),
      };
}

class CardIdResponseDataModel {
  int? id;
  CardDataAttributesModel? attributes;

  CardIdResponseDataModel({
    this.id,
    this.attributes,
  });

  factory CardIdResponseDataModel.fromJson(Map<String, dynamic> json) =>
      CardIdResponseDataModel(
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
  AvatarCardIdResponseModel? avatarCard;

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
            : AvatarCardIdResponseModel.fromJson(json["avatar_card"]),
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

class AvatarCardIdResponseModel {
  AvatarCardIdDataModel? data;

  AvatarCardIdResponseModel({
    this.data,
  });

  factory AvatarCardIdResponseModel.fromJson(Map<String, dynamic> json) => AvatarCardIdResponseModel(
        data:
            json["data"] == null ? null : AvatarCardIdDataModel.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
      };
}

class AvatarCardIdDataModel {
  int? id;
  AvatarCardIdAttributesModel? attributes;

  AvatarCardIdDataModel({
    this.id,
    this.attributes,
  });

  factory AvatarCardIdDataModel.fromJson(Map<String, dynamic> json) => AvatarCardIdDataModel(
        id: json["id"],
        attributes: json["attributes"] == null
            ? null
            : AvatarCardIdAttributesModel.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes?.toJson(),
      };
}

class AvatarCardIdAttributesModel {
  String? name;
  dynamic alternativeText;
  dynamic caption;
  int? width;
  int? height;
  FormatsIdModel? formats;
  String? hash;
  String? ext;
  String? mime;
  double? size;
  String? url;
  dynamic previewUrl;
  String? provider;
  ProviderMetadataModel? providerMetadata;
  DateTime? createdAt;
  DateTime? updatedAt;

  AvatarCardIdAttributesModel({
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

  factory AvatarCardIdAttributesModel.fromJson(Map<String, dynamic> json) =>
      AvatarCardIdAttributesModel(
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats:
            json["formats"] == null ? null : FormatsIdModel.fromJson(json["formats"]),
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"]?.toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata: json["provider_metadata"] == null
            ? null
            : ProviderMetadataModel.fromJson(json["provider_metadata"]),
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
        "provider_metadata": providerMetadata?.toJson(),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };
}

class FormatsIdModel {
  FormatIdDataModel? small;
  FormatIdDataModel? thumbnail;

  FormatsIdModel({
    this.small,
    this.thumbnail,
  });

  factory FormatsIdModel.fromJson(Map<String, dynamic> json) => FormatsIdModel(
        small: json["small"] == null ? null : FormatIdDataModel.fromJson(json["small"]),
        thumbnail: json["thumbnail"] == null
            ? null
            : FormatIdDataModel.fromJson(json["thumbnail"]),
      );

  Map<String, dynamic> toJson() => {
        "small": small?.toJson(),
        "thumbnail": thumbnail?.toJson(),
      };
}

class FormatIdDataModel {
  String? ext;
  String? url;
  String? hash;
  String? mime;
  String? name;
  dynamic path;
  double? size;
  int? width;
  int? height;
  ProviderMetadataModel? providerMetadata;

  FormatIdDataModel({
    this.ext,
    this.url,
    this.hash,
    this.mime,
    this.name,
    this.path,
    this.size,
    this.width,
    this.height,
    this.providerMetadata,
  });

  factory FormatIdDataModel.fromJson(Map<String, dynamic> json) => FormatIdDataModel(
        ext: json["ext"],
        url: json["url"],
        hash: json["hash"],
        mime: json["mime"],
        name: json["name"],
        path: json["path"],
        size: json["size"]?.toDouble(),
        width: json["width"],
        height: json["height"],
        providerMetadata: json["provider_metadata"] == null
            ? null
            : ProviderMetadataModel.fromJson(json["provider_metadata"]),
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
        "provider_metadata": providerMetadata?.toJson(),
      };
}

class ProviderMetadataModel {
  String? publicId;
  String? resourceType;

  ProviderMetadataModel({
    this.publicId,
    this.resourceType,
  });

  factory ProviderMetadataModel.fromJson(Map<String, dynamic> json) =>
      ProviderMetadataModel(
        publicId: json["public_id"],
        resourceType: json["resource_type"],
      );

  Map<String, dynamic> toJson() => {
        "public_id": publicId,
        "resource_type": resourceType,
      };
}

class CardIdResponseMetaModel {
  CardIdResponseMetaModel();

  factory CardIdResponseMetaModel.fromJson(Map<String, dynamic> json) =>
      CardIdResponseMetaModel();

  Map<String, dynamic> toJson() => {};
}
