import '../../entities/auth_entity/user_response_entity.dart';
import '../../repositories/auth_repository.dart';

class GetCurrentUserUseCase {
  final AuthRepository authRepository;

  GetCurrentUserUseCase({required this.authRepository});

  Future<UserDataEntity?> call() async => await authRepository.getCurrentUser();
}
