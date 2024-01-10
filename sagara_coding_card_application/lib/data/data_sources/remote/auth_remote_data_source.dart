import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/login_response_model.dart';

class AuthRemoteDataSource {
  final Dio client;

  AuthRemoteDataSource({required this.client});

  Future<LoginResponseModel> login(String username, String password) async {
    try {
      const url = 'https://sagara-card.onrender.com/api/auth/local';
      final result = await client.post(
        url,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
        data: {
          'identifier': username,
          'password': password,
        },
      );
      final loginData = LoginResponseModel.fromJson(result.data);
      client.options.headers['Authorization'] = 'Bearer ${loginData.jwt}';
      return loginData;
    } catch (e) {
      inspect('Error: $e');
      return LoginResponseModel();
    }
  }
}
