import 'package:sagara_coding_card_application/domain/repositories/auth_repository.dart';

class CheckTokenUseCase {
  final AuthRepository authRepository;

  CheckTokenUseCase({required this.authRepository});

  Future<bool> call() async {
    return await authRepository.checkToken();
  }
}
