part of 'leaderboard_bloc.dart';

@immutable
sealed class LeaderboardState {}

class LeaderboardInitial extends LeaderboardState {}

class LeaderboardLoadingState extends LeaderboardState {}

class LeaderboardSuccessState extends LeaderboardState {
  final List<LeaderboardDataEntity> leaderboard;

  LeaderboardSuccessState({required this.leaderboard});
}

class LeaderboardFailureState extends LeaderboardState {
  final String message;

  LeaderboardFailureState({required this.message});
}
