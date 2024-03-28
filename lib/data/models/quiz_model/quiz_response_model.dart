class QuizResponseModel {
  List<QuizDataModel>? data;
  QuizMetaModel? meta;

  QuizResponseModel({
    this.data,
    this.meta,
  });

  factory QuizResponseModel.fromJson(Map<String, dynamic> json) =>
      QuizResponseModel(
        data: json["data"] == null
            ? []
            : List<QuizDataModel>.from(
                json["data"]!.map((x) => QuizDataModel.fromJson(x))),
        meta:
            json["meta"] == null ? null : QuizMetaModel.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "meta": meta?.toJson(),
      };
}

class QuizDataModel {
  int? id;
  QuizDataAttributesModel? attributes;

  QuizDataModel({
    this.id,
    this.attributes,
  });

  factory QuizDataModel.fromJson(Map<String, dynamic> json) => QuizDataModel(
        id: json["id"],
        attributes: json["attributes"] == null
            ? null
            : QuizDataAttributesModel.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes?.toJson(),
      };
}

class QuizDataAttributesModel {
  String? quizQuestion;
  String? optionOne;
  String? optionTwo;
  String? optionThree;
  String? optionFour;
  String? correctOption;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? publishedAt;
  QuizCardsModel? cards;

  QuizDataAttributesModel({
    this.quizQuestion,
    this.optionOne,
    this.optionTwo,
    this.optionThree,
    this.optionFour,
    this.correctOption,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.cards,
  });

  factory QuizDataAttributesModel.fromJson(Map<String, dynamic> json) =>
      QuizDataAttributesModel(
        quizQuestion: json["quiz_question"],
        optionOne: json["option_one"],
        optionTwo: json["option_two"],
        optionThree: json["option_three"],
        optionFour: json["option_four"],
        correctOption: json["correct_option"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        publishedAt: json["publishedAt"] == null
            ? null
            : DateTime.parse(json["publishedAt"]),
        cards: json["cards"] == null
            ? null
            : QuizCardsModel.fromJson(json["cards"]),
      );

  Map<String, dynamic> toJson() => {
        "quiz_question": quizQuestion,
        "option_one": optionOne,
        "option_two": optionTwo,
        "option_three": optionThree,
        "option_four": optionFour,
        "correct_option": correctOption,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "publishedAt": publishedAt?.toIso8601String(),
        "cards": cards?.toJson(),
      };
}

class QuizCardsModel {
  List<QuizCardsDataModel>? data;

  QuizCardsModel({
    this.data,
  });

  factory QuizCardsModel.fromJson(Map<String, dynamic> json) => QuizCardsModel(
        data: json["data"] == null
            ? []
            : List<QuizCardsDataModel>.from(
                json["data"]!.map((x) => QuizCardsDataModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class QuizCardsDataModel {
  int? id;
  QuizCardDataAttributesModel? attributes;

  QuizCardsDataModel({
    this.id,
    this.attributes,
  });

  factory QuizCardsDataModel.fromJson(Map<String, dynamic> json) =>
      QuizCardsDataModel(
        id: json["id"],
        attributes: json["attributes"] == null
            ? null
            : QuizCardDataAttributesModel.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes?.toJson(),
      };
}

class QuizCardDataAttributesModel {
  String? name;
  String? role;
  String? description;
  String? level;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? publishedAt;

  QuizCardDataAttributesModel({
    this.name,
    this.role,
    this.description,
    this.level,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
  });

  factory QuizCardDataAttributesModel.fromJson(Map<String, dynamic> json) =>
      QuizCardDataAttributesModel(
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
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "role": role,
        "description": description,
        "level": level,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "publishedAt": publishedAt?.toIso8601String(),
      };
}

class QuizMetaModel {
  QuizMetaPaginationModel? pagination;

  QuizMetaModel({
    this.pagination,
  });

  factory QuizMetaModel.fromJson(Map<String, dynamic> json) => QuizMetaModel(
        pagination: json["pagination"] == null
            ? null
            : QuizMetaPaginationModel.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "pagination": pagination?.toJson(),
      };
}

class QuizMetaPaginationModel {
  int? page;
  int? pageSize;
  int? pageCount;
  int? total;

  QuizMetaPaginationModel({
    this.page,
    this.pageSize,
    this.pageCount,
    this.total,
  });

  factory QuizMetaPaginationModel.fromJson(Map<String, dynamic> json) =>
      QuizMetaPaginationModel(
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
