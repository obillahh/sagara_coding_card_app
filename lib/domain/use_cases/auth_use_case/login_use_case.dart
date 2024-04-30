import 'package:sagara_coding_card_application/data/models/auth_model/login_request_model.dart';
import 'package:sagara_coding_card_application/domain/repositories/auth_repository.dart';

import '../../entities/auth_entity/user_entity/user_response_entity.dart';

class LoginUseCase {
  final AuthRepository authRepository;

  LoginUseCase({required this.authRepository});

  Future<UserResponseEntity?> call(LoginRequestModel loginRequest) async =>
      await authRepository.login(loginRequest: loginRequest);
}
