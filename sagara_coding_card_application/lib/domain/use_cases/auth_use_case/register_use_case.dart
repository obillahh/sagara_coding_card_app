import 'package:sagara_coding_card_application/domain/repositories/auth_repository.dart';

import '../../../data/models/auth_model/register_request_model.dart';
import '../../entities/auth_entity/user_response_entity.dart';

class RegisterUseCase {
  final AuthRepository authRepository;

  RegisterUseCase({required this.authRepository});

  Future<UserResponseEntity?> call(
          RegisterRequestModel registerRequest) async =>
      await authRepository.register(registerRequest: registerRequest);
}
