import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/register_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/user_response_model.dart';
import 'package:sagara_coding_card_application/presentation/utils/constant/api_constant.dart';

import '../../models/auth_model/login_request_model.dart';

class AuthRemoteDataSource {
  final Dio client;

  AuthRemoteDataSource({required this.client});

  Future<UserResponseModel> login(
      {required LoginRequestModel loginRequestModel}) async {
    try {
      const url = ApiConstant.login;
      final result = await client.post(
        url,
        data: loginRequestModel.toJson(),
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
      print('Response: ${result.data}');
      final loginData = UserResponseModel.fromJson(result.data);
      return loginData;
    } catch (e) {
      inspect('Error: $e');
      return UserResponseModel();
    }
  }

  Future<UserResponseModel> register(
      {required RegisterRequestModel registerRequestModel}) async {
    try {
      const url = ApiConstant.register;
      final result = await client.post(
        url,
        data: registerRequestModel.toJson(),
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
      final regisData = UserResponseModel.fromJson(result.data);
      return regisData;
    } catch (e) {
      inspect('Error: $e');
      return UserResponseModel();
    }
  }
}
