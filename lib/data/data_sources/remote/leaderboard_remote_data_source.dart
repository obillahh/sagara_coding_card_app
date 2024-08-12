import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:sagara_coding_card_application/data/models/leaderboard_model/leaderboard_response_model.dart';
import 'package:sagara_coding_card_application/presentation/utils/constant/api_constant.dart';

class LeaderboardRemoteDataSource {
  final Dio client;

  LeaderboardRemoteDataSource({required this.client});

  Future<LeaderboardResponseModel> getLeaderboard() async {
    try {
      const url = ApiConstant.leaderboard;
      final result = await client.get(
        url,
        options: Options(
          headers: {
            'Accept': 'application/json',
          },
        ),
      );
      final leaderboardData = LeaderboardResponseModel.fromJson(result.data);
      return leaderboardData;
    } catch (e) {
      inspect('Error: $e');
      return LeaderboardResponseModel();
    }
  }
}
