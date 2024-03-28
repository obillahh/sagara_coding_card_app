class QuizResponseEntity {
  final List<QuizDataEntity> data;
  final QuizMetaEntity meta;

  QuizResponseEntity({
    required this.data,
    required this.meta,
  });

  factory QuizResponseEntity.fromJson(Map<String, dynamic> json) =>
      QuizResponseEntity(
        data: List<QuizDataEntity>.from(
            json["data"].map((x) => QuizDataEntity.fromJson(x))),
        meta: QuizMetaEntity.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta.toJson(),
      };
}

class QuizDataEntity {
  final int id;
  final QuizDataAttributesEntity attributes;

  QuizDataEntity({
    required this.id,
    required this.attributes,
  });

  factory QuizDataEntity.fromJson(Map<String, dynamic> json) => QuizDataEntity(
        id: json["id"],
        attributes: QuizDataAttributesEntity.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class QuizDataAttributesEntity {
  final String quizQuestion;
  final String optionOne;
  final String optionTwo;
  final String optionThree;
  final String optionFour;
  final String correctOption;
  final QuizCardsEntity cards;

  QuizDataAttributesEntity({
    required this.quizQuestion,
    required this.optionOne,
    required this.optionTwo,
    required this.optionThree,
    required this.optionFour,
    required this.correctOption,
    required this.cards,
  });

  factory QuizDataAttributesEntity.fromJson(Map<String, dynamic> json) =>
      QuizDataAttributesEntity(
        quizQuestion: json["quiz_question"],
        optionOne: json["option_one"],
        optionTwo: json["option_two"],
        optionThree: json["option_three"],
        optionFour: json["option_four"],
        correctOption: json["correct_option"],
        cards: QuizCardsEntity.fromJson(json["cards"]),
      );

  Map<String, dynamic> toJson() => {
        "quiz_question": quizQuestion,
        "option_one": optionOne,
        "option_two": optionTwo,
        "option_three": optionThree,
        "option_four": optionFour,
        "correct_option": correctOption,
        "cards": cards.toJson(),
      };
}

class QuizCardsEntity {
  final List<QuizCardsDataEntity> data;

  QuizCardsEntity({
    required this.data,
  });

  factory QuizCardsEntity.fromJson(Map<String, dynamic> json) =>
      QuizCardsEntity(
        data: List<QuizCardsDataEntity>.from(
            json["data"].map((x) => QuizCardsDataEntity.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class QuizCardsDataEntity {
  final int id;
  final QuizCardDataAttributesEntity attributes;

  QuizCardsDataEntity({
    required this.id,
    required this.attributes,
  });

  factory QuizCardsDataEntity.fromJson(Map<String, dynamic> json) =>
      QuizCardsDataEntity(
        id: json["id"],
        attributes: QuizCardDataAttributesEntity.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class QuizCardDataAttributesEntity {
  final String name;
  final String role;
  final String description;
  final String level;

  QuizCardDataAttributesEntity({
    required this.name,
    required this.role,
    required this.description,
    required this.level,
  });

  factory QuizCardDataAttributesEntity.fromJson(Map<String, dynamic> json) =>
      QuizCardDataAttributesEntity(
        name: json["name"],
        role: json["role"],
        description: json["description"],
        level: json["level"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "role": role,
        "description": description,
        "level": level,
      };
}

class QuizMetaEntity {
  final QuizMetaPaginationEntity pagination;

  QuizMetaEntity({
    required this.pagination,
  });

  factory QuizMetaEntity.fromJson(Map<String, dynamic> json) => QuizMetaEntity(
        pagination: QuizMetaPaginationEntity.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "pagination": pagination.toJson(),
      };
}

class QuizMetaPaginationEntity {
  final int page;
  final int pageSize;
  final int pageCount;
  final int total;

  QuizMetaPaginationEntity({
    required this.page,
    required this.pageSize,
    required this.pageCount,
    required this.total,
  });

  factory QuizMetaPaginationEntity.fromJson(Map<String, dynamic> json) => QuizMetaPaginationEntity(
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
