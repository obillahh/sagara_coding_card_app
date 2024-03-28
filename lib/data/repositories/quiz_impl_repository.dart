import 'package:sagara_coding_card_application/data/data_sources/remote/quiz_remote_data_source.dart';
import 'package:sagara_coding_card_application/data/models/quiz_model/quiz_response_model.dart';
import 'package:sagara_coding_card_application/domain/entities/quiz_entity/quiz_response_entity.dart';
import 'package:sagara_coding_card_application/domain/repositories/quiz_repository.dart';

class QuizImplRepository extends QuizRepository {
  final QuizRemoteDataSource remoteDataSource;

  QuizImplRepository({required this.remoteDataSource});

  @override
  Future<List<QuizDataEntity>?> getQuiz() async {
    final response = await remoteDataSource.getQuiz();
    if (response.data == null) {
      return null;
    }
    final data = QuizResponseEntity(
      data: List<QuizDataModel>.from(response.data ?? [])
          .map(
            (e) => QuizDataEntity(
              id: e.id ?? 0,
              attributes: QuizDataAttributesEntity(
                quizQuestion: e.attributes?.quizQuestion ?? '',
                optionOne: e.attributes?.optionOne ?? '',
                optionTwo: e.attributes?.optionTwo ?? '',
                optionThree: e.attributes?.optionThree ?? '',
                optionFour: e.attributes?.optionFour ?? '',
                correctOption: e.attributes?.correctOption ?? '',
                cards: QuizCardsEntity(
                  data: List<QuizCardsDataModel>.from(
                          e.attributes?.cards?.data ?? [])
                      .map(
                        (e) => QuizCardsDataEntity(
                          id: e.id ?? 0,
                          attributes: QuizCardDataAttributesEntity(
                            name: e.attributes?.name ?? '',
                            role: e.attributes?.role ?? '',
                            description: e.attributes?.description ?? '',
                            level: e.attributes?.level ?? '',
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          )
          .toList(),
      meta: QuizMetaEntity(
        pagination: QuizMetaPaginationEntity(
          page: response.meta?.pagination?.page ?? 0,
          pageSize: response.meta?.pagination?.pageSize ?? 0,
          pageCount: response.meta?.pagination?.pageCount ?? 0,
          total: response.meta?.pagination?.total ?? 0,
        ),
      ),
    );
    return data.data;
  }
}
