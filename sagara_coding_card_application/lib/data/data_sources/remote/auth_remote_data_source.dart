import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/login_response_model.dart';
import 'package:sagara_coding_card_application/presentation/utils/constant/api_constant.dart';

class AuthRemoteDataSource {
  final Dio client;

  AuthRemoteDataSource({required this.client});

  Future<LoginResponseModel> login(String identifier, String password) async {
    try {
      const url = ApiConstant.login;
      final result = await client.post(
        url,
        data: {
          'identifier': identifier,
          'password': password,
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
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
