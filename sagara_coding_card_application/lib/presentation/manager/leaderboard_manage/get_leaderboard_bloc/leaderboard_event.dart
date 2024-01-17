part of 'leaderboard_bloc.dart';

@immutable
sealed class LeaderboardEvent {}

final class GetLeaderboardEvent extends LeaderboardEvent {}
