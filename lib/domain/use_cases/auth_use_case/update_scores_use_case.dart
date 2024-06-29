import 'package:sagara_coding_card_application/data/models/auth_model/user_model/score_update_request_model.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/update_score_response_entity.dart';
import 'package:sagara_coding_card_application/domain/repositories/auth_repository.dart';

class UpdateScoresUseCase {
  final AuthRepository authRepository;

  UpdateScoresUseCase({required this.authRepository});

  Future<UpdateScoreResponseEntity?> call(
          {required ScoreUpdateRequestModel request, required int id}) async =>
      await authRepository.updateScores(request: request, id: id);
}
