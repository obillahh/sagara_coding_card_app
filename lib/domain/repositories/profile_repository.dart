abstract class ProfileRepository {
  Future<void> setAvatarProfile({required String avatarUrl});
  Future<String?> restoreAvatarProfile();
}
