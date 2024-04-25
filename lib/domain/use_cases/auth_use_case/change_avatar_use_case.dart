import 'package:sagara_coding_card_application/domain/repositories/auth_repository.dart';

class ChangeAvatarUseCase {
  final AuthRepository authRepository;

  ChangeAvatarUseCase({required this.authRepository});

  Future<void> call({required String avatarUrl}) async =>
      await authRepository.changeAvatar(avatarUrl: avatarUrl);
}
