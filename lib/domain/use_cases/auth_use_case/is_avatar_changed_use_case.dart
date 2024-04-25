import 'package:sagara_coding_card_application/domain/repositories/auth_repository.dart';

class IsAvatarChangedUseCase {
  final AuthRepository authRepository;

  IsAvatarChangedUseCase({required this.authRepository});

  Future<String?> call() async => await authRepository.isAvatarChanged();
}
