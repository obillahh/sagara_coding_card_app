import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../domain/entities/auth_entity/user_response_entity.dart';

class AuthLocalDataSource {
  static const String _tokenKey = 'jwt';
  static const String _userDataKey = 'user';

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
}
