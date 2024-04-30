import 'package:sagara_coding_card_application/domain/entities/auth_entity/user_entity/user_response_entity.dart';
import 'package:sagara_coding_card_application/domain/repositories/auth_repository.dart';

class SignInWithGoogleUseCase {
  final AuthRepository authRepository;

  SignInWithGoogleUseCase({required this.authRepository});

  Future<UserResponseEntity?> call() async =>
      await authRepository.signInWithGoogle();
}
