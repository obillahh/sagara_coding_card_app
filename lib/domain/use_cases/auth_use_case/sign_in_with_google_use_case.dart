import 'package:sagara_coding_card_application/domain/repositories/auth_repository.dart';

class SignInWithGoogleUseCase {
  final AuthRepository authRepository;

  SignInWithGoogleUseCase({required this.authRepository});

  Future call() async => await authRepository.signInWithGoogle();
}
