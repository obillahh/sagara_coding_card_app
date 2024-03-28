import 'package:sagara_coding_card_application/domain/entities/quiz_entity/quiz_response_entity.dart';

abstract class QuizRepository {
  Future<List<QuizDataEntity>?> getQuiz();
}
