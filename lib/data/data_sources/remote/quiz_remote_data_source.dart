import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:sagara_coding_card_application/data/data_sources/local/auth_local_data_source.dart';
import 'package:sagara_coding_card_application/data/models/quiz_model/quiz_response_model.dart';
import 'package:sagara_coding_card_application/presentation/utils/constant/api_constant.dart';

class QuizRemoteDataSource {
  final Dio client;

  QuizRemoteDataSource({required this.client});

  Future<QuizResponseModel> getQuiz() async {
    try {
      const url = ApiConstant.quiz;
      final token = await AuthLocalDataSource().getToken();
      if (token != null) {
        final result = await client.get(
          url,
          queryParameters: {
            "populate": "cards",
          },
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );
        final quizData = QuizResponseModel.fromJson(result.data);
        return quizData;
      } else {
        return QuizResponseModel();
      }
    } catch (e) {
      inspect('Error: $e');
      return QuizResponseModel();
    }
  }
}
