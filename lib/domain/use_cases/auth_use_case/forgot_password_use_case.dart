import 'package:sagara_coding_card_application/data/models/auth_model/forgot_password_request_model.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/forgot_password_response_entity.dart';
import 'package:sagara_coding_card_application/domain/repositories/auth_repository.dart';

class ForgotPasswordUseCase {
  final AuthRepository authRepository;

  ForgotPasswordUseCase({required this.authRepository});

  Future<ForgotPasswordResponseEntity?> call({required ForgotPasswordRequestModel request}) async =>
      await authRepository.forgotPassword(request: request);
}
