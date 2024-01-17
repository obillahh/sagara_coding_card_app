part of 'leaderboard_bloc.dart';

@immutable
sealed class LeaderboardState {}

final class LeaderboardInitial extends LeaderboardState {}

final class LeaderboardLoadingState extends LeaderboardState {}

final class LeaderboardSuccessState extends LeaderboardState {
  final List<LeaderboardDataEntity> leaderboard;

  LeaderboardSuccessState({required this.leaderboard});
}

final class LeaderboardFailureState extends LeaderboardState {
  final String message;

  LeaderboardFailureState({required this.message});
}
