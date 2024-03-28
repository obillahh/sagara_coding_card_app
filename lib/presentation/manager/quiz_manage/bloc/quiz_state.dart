part of 'quiz_bloc.dart';

@immutable
sealed class QuizState {}

final class QuizInitial extends QuizState {}

final class QuizLoadingState extends QuizState {}

final class QuizSuccessState extends QuizState {
  final List<QuizDataEntity> quizList;

  QuizSuccessState({required this.quizList});
}

final class QuizErrorState extends QuizState {
  final String error;

  QuizErrorState({required this.error});
}
