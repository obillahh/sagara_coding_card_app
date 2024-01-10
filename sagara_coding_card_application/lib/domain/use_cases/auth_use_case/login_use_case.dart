import 'package:sagara_coding_card_application/domain/repositories/auth_repository.dart';

import '../../entities/auth_entity/login_response_entity.dart';

class LoginUseCase {
  final AuthRepository authRepository;

  LoginUseCase({required this.authRepository});

  Future<LoginResponseEntity?> call(String username, String password) async =>
      await authRepository.login(username, password);
}
