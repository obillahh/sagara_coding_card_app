import 'package:sagara_coding_card_application/domain/repositories/auth_repository.dart';

class IsSignedInWithGoogleUseCase {
  final AuthRepository authRepository;

  IsSignedInWithGoogleUseCase({required this.authRepository});

  bool call() => authRepository.isSignedInWithGoogle();
}
