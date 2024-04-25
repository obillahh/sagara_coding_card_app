import 'package:sagara_coding_card_application/data/data_sources/local/auth_local_data_source.dart';
import 'package:sagara_coding_card_application/domain/repositories/profile_repository.dart';

class ProfileImplRepository extends ProfileRepository {
  final AuthLocalDataSource authLocalDataSource;

  ProfileImplRepository({required this.authLocalDataSource});

  @override
  Future<void> setAvatarProfile({required String avatarUrl}) async {
    await authLocalDataSource.setAvatarProfile(avatarUrl);
  }

  @override
  Future<String?> restoreAvatarProfile() async {
    return await authLocalDataSource.getAvatarProfile();
  }
}
