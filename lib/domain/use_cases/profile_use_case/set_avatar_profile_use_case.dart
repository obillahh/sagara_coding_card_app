import 'package:sagara_coding_card_application/domain/repositories/profile_repository.dart';

class SetAvatarProfileUseCase {
  final ProfileRepository profileRepository;
  const SetAvatarProfileUseCase({required this.profileRepository});

  Future<void> call({required String avatarUrl}) async {
    await profileRepository.setAvatarProfile(avatarUrl: avatarUrl);
  }
}
