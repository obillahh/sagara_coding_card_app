import '../entities/leaderboard_entity/leaderboard_response_entity.dart';

abstract class LeaderboardRepository {
  Future<List<LeaderboardDataEntity>?> getLeaderboard();
}
