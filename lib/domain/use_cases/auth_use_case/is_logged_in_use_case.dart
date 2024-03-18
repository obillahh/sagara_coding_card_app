import 'package:sagara_coding_card_application/domain/repositories/auth_repository.dart';

class IsLoggedInUseCase {
  final AuthRepository authRepository;

  IsLoggedInUseCase({required this.authRepository});

  Future<bool> call() => authRepository.isLoggedIn();
}
