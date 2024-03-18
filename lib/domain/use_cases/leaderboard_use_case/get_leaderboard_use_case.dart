import 'package:sagara_coding_card_application/domain/entities/leaderboard_entity/leaderboard_response_entity.dart';
import 'package:sagara_coding_card_application/domain/repositories/leaderboard_repository.dart';

class GetLeaderboardUseCase {
  final LeaderboardRepository leaderboardRepository;

  GetLeaderboardUseCase({required this.leaderboardRepository});

  Future<List<LeaderboardDataEntity>?> call() async =>
      await leaderboardRepository.getLeaderboard();
}
