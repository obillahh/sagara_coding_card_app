part of 'quiz_bloc.dart';

@immutable
sealed class QuizEvent {}

class GetQuizEvent extends QuizEvent {}
