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
  final QuizCardResponseEntity quizzes;

  CardIdDataAttributesEntity({
    required this.name,
    required this.role,
    required this.description,
    required this.level,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.avatarCard,
    required this.quizzes,
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
        quizzes: QuizCardResponseEntity.fromJson(json["quizzes"]),
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
        "quizzes": quizzes.toJson(),
      };
}

class AvatarCardIdResponseEntity {
  final AvatarCardIdDataEntity data;

  AvatarCardIdResponseEntity({
    required this.data,
  });

  factory AvatarCardIdResponseEntity.fromJson(Map<String, dynamic> json) =>
      AvatarCardIdResponseEntity(
        data: AvatarCardIdDataEntity.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class AvatarCardIdDataEntity {
  final int id;
  final AvatarCardIdAttributesEntity attributes;

  AvatarCardIdDataEntity({
    required this.id,
    required this.attributes,
  });

  factory AvatarCardIdDataEntity.fromJson(Map<String, dynamic> json) =>
      AvatarCardIdDataEntity(
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
        providerMetadata: ProviderMetadataEntity.fromJson(json["provider_metadata"]),
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

  factory FormatsIdEntity.fromJson(Map<String, dynamic> json) => FormatsIdEntity(
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

  factory FormatIdDataEntity.fromJson(Map<String, dynamic> json) => FormatIdDataEntity(
        ext: json["ext"],
        url: json["url"],
        hash: json["hash"],
        mime: json["mime"],
        name: json["name"],
        path: json["path"],
        size: json["size"].toDouble(),
        width: json["width"],
        height: json["height"],
        providerMetadata: ProviderMetadataEntity.fromJson(json["provider_metadata"]),
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

class QuizCardResponseEntity {
  final List<QuizCardDataEntity> data;

  QuizCardResponseEntity({
    required this.data,
  });

  factory QuizCardResponseEntity.fromJson(Map<String, dynamic> json) =>
      QuizCardResponseEntity(
        data: List<QuizCardDataEntity>.from(
            json["data"].map((x) => QuizCardDataEntity.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class QuizCardDataEntity {
  final int id;
  final QuizCardDataAttributesEntity attributes;

  QuizCardDataEntity({
    required this.id,
    required this.attributes,
  });

  factory QuizCardDataEntity.fromJson(Map<String, dynamic> json) => QuizCardDataEntity(
        id: json["id"],
        attributes: QuizCardDataAttributesEntity.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class QuizCardDataAttributesEntity {
  final String quizQuestion;
  final String optionOne;
  final String optionTwo;
  final String optionThree;
  final String optionFour;
  final String correctOption;
  final int score;

  QuizCardDataAttributesEntity({
    required this.quizQuestion,
    required this.optionOne,
    required this.optionTwo,
    required this.optionThree,
    required this.optionFour,
    required this.correctOption,
    required this.score,
  });

  factory QuizCardDataAttributesEntity.fromJson(Map<String, dynamic> json) =>
      QuizCardDataAttributesEntity(
        quizQuestion: json["quiz_question"],
        optionOne: json["option_one"],
        optionTwo: json["option_two"],
        optionThree: json["option_three"],
        optionFour: json["option_four"],
        correctOption: json["correct_option"],
        score: json["score"],
      );

  Map<String, dynamic> toJson() => {
        "quiz_question": quizQuestion,
        "option_one": optionOne,
        "option_two": optionTwo,
        "option_three": optionThree,
        "option_four": optionFour,
        "correct_option": correctOption,
        "score": score,
      };
}
