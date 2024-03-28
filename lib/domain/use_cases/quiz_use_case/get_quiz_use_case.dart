import 'package:sagara_coding_card_application/domain/entities/quiz_entity/quiz_response_entity.dart';
import 'package:sagara_coding_card_application/domain/repositories/quiz_repository.dart';

class GetQuizUseCase {
  final QuizRepository quizRepository;

  GetQuizUseCase({required this.quizRepository});

  Future<List<QuizDataEntity>?> call() async => await quizRepository.getQuiz();
}
