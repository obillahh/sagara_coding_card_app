import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../domain/entities/auth_entity/login_response_entity.dart';

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

  Future<void> saveUserData(UserResponseEntity userData) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final jsonData = userData.toJson();
    final jsonString = jsonEncode(jsonData);
    await sharedPreferences.setString(_userDataKey, jsonString);
  }

  Future<UserResponseEntity?> getUserData() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final jsonString = sharedPreferences.getString(_userDataKey);
    if (jsonString != null) {
      final jsonData = jsonDecode(jsonString);
      return UserResponseEntity.fromJson(jsonData);
    }
    return null;
  }
}
