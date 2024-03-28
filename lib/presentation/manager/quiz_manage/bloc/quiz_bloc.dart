import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sagara_coding_card_application/domain/entities/quiz_entity/quiz_response_entity.dart';
import 'package:sagara_coding_card_application/domain/use_cases/quiz_use_case/get_quiz_use_case.dart';

part 'quiz_event.dart';
part 'quiz_state.dart';

class QuizBloc extends Bloc<QuizEvent, QuizState> {
  final GetQuizUseCase getQuizUseCase;
  QuizBloc({required this.getQuizUseCase}) : super(QuizInitial()) {
    on<QuizEvent>(
      (event, emit) async {
        if (event is GetQuizEvent) {
          emit(QuizLoadingState());
          final List<QuizDataEntity>? data = await getQuizUseCase();
          if (data != null) {
            emit(QuizSuccessState(quizList: data));
          } else {
            emit(QuizErrorState(error: "Something went wrong!"));
          }
        }
      },
    );
  }
}
