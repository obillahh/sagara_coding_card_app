import 'package:sagara_coding_card_application/data/models/auth_model/reset_password_request_model.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/user_entity/user_response_entity.dart';
import 'package:sagara_coding_card_application/domain/repositories/auth_repository.dart';

class ResetPasswordUseCase {
  final AuthRepository authRepository;

  ResetPasswordUseCase({required this.authRepository});

  Future<UserResponseEntity?> call({required ResetPasswordRequestModel request}) async =>
      await authRepository.resetPassword(resetPasswordRequest: request);
}
