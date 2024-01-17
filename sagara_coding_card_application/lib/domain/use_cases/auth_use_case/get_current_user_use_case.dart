import '../../entities/auth_entity/login_response_entity.dart';
import '../../repositories/auth_repository.dart';

class GetCurrentUserUseCase {
  final AuthRepository authRepository;

  GetCurrentUserUseCase({required this.authRepository});

  Future<UserResponseEntity?> call() async =>
      await authRepository.getCurrentUser();
}
