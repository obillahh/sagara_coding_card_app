import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../domain/entities/auth_entity/user_response_entity.dart';

class AuthLocalDataSource {
  static const String _avatarProfileKey = 'avatar_profile';
  static const String _firstEntryKey = 'firstEntry';
  static const String _tokenKey = 'jwt';
  static const String _userDataKey = 'user';
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

  Future<void> saveUserData(UserDataEntity userData) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final jsonData = userData.toJson();
    final jsonString = jsonEncode(jsonData);
    await sharedPreferences.setString(_userDataKey, jsonString);
  }

  Future<UserDataEntity?> getUserData() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final jsonString = sharedPreferences.getString(_userDataKey);
    if (jsonString != null) {
      final jsonData = jsonDecode(jsonString);
      return UserDataEntity.fromJson(jsonData);
    }
    return null;
  }

  Future<void> removeUserData() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.remove(_userDataKey);
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
