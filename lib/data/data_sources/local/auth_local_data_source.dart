import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDataSource {
  static const String _avatarProfileKey = 'avatar_profile';
  static const String _firstEntryKey = 'firstEntry';
  static const String _tokenKey = 'jwt';
  static const String _userIdKey = 'id';
  static const String _collectionCardKey = 'collection_card';

  Future<void> saveFirstEntry(bool isFirstEntry) async {
    final sharedPreference = await SharedPreferences.getInstance();
    await sharedPreference.setBool(_firstEntryKey, isFirstEntry);
  }

  Future<void> saveToken(String token) async {
    final sharedPreference = await SharedPreferences.getInstance();
    await sharedPreference.setString(_tokenKey, token);
  }

  Future<String?> getToken() async {
    final sharedPreference = await SharedPreferences.getInstance();
    return sharedPreference.getString(_tokenKey);
  }

  Future<void> removeToken() async {
    final sharedPreference = await SharedPreferences.getInstance();
    await sharedPreference.remove(_tokenKey);
  }

  Future<void> saveUserId(int userId) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setInt(_userIdKey, userId);
  }

  Future<int?> getUserId() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getInt(_userIdKey);
  }

  Future<void> removeUserId() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.remove(_userIdKey);
  }

  Future<bool> isFirstEntry() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final isFirstEntry = sharedPreferences.getBool(_firstEntryKey);

    if (isFirstEntry == null) {
      await sharedPreferences.setBool(_firstEntryKey, false);
      return true;
    }
    return false;
  }

  Future<void> setAvatarProfile(String avatarUrl) async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(_avatarProfileKey, avatarUrl);
  }

  Future<String?> getAvatarProfile() async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(_avatarProfileKey);
  }

  Future<void> increaseCollectionCard() async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    int currentCount = sharedPreferences.getInt(_collectionCardKey) ?? 0;
    await sharedPreferences.setInt(_collectionCardKey, currentCount + 1);
  }
}
