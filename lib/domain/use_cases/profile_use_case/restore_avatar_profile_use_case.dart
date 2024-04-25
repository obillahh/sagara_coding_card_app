import 'package:sagara_coding_card_application/domain/repositories/profile_repository.dart';

class RestoreAvatarProfileUseCase {
  final ProfileRepository profileRepository;
  const RestoreAvatarProfileUseCase({required this.profileRepository});

  Future<String?> call() async {
    return await profileRepository.restoreAvatarProfile();
  }
}
