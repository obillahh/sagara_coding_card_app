import 'package:sagara_coding_card_application/domain/repositories/auth_repository.dart';

class LogoutUseCase {
  final AuthRepository authRepository;

  LogoutUseCase({required this.authRepository});

  Future<void> call() async => await authRepository.logout();
}
