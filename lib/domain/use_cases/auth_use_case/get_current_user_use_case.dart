import '../../entities/auth_entity/user_entity/user_data_response_entity.dart';

import '../../repositories/auth_repository.dart';

class GetCurrentUserUseCase {
  final AuthRepository authRepository;

  GetCurrentUserUseCase({required this.authRepository});

  Future<UserDataResponseEntity?> call() async => await authRepository.getCurrentUser();
}
