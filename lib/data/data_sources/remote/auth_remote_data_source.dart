import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sagara_coding_card_application/data/data_sources/local/auth_local_data_source.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/email_confirmation_response_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/forgot_password_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/forgot_password_response_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/register_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/reset_password_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/sync_collection_response_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/update_score_response_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/user_model/avatar_update_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/user_model/avatar_update_response_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/user_model/score_update_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/user_model/user_id_response_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/user_model/user_response_model.dart';
import 'package:sagara_coding_card_application/presentation/utils/constant/api_constant.dart';

import '../../models/auth_model/login_request_model.dart';

class AuthRemoteDataSource {
  final Dio client;

  AuthRemoteDataSource({required this.client});

  Future<UserResponseModel> login({required LoginRequestModel loginRequestModel}) async {
    try {
      const url = ApiConstant.login;
      final result = await client.post(
        url,
        data: loginRequestModelToJson(loginRequestModel),
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

  Future<UserResponseModel> register({required RegisterRequestModel registerRequestModel}) async {
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

  Future<UserIdResponseModel> getUserId({required int id}) async {
    try {
      final String url = '${ApiConstant.baseUrlApi}/users/$id';
      final result = await client.get(
        url,
        queryParameters: {
          'populate': 'avatar',
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );

      final userIdData = UserIdResponseModel.fromJson(result.data);
      return userIdData;
    } catch (e) {
      inspect('Error: $e');
      return const UserIdResponseModel();
    }
  }

  Future<GoogleSignInAccount?> googleSignIn() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      return googleUser;
    } catch (e) {
      inspect('Error: $e');
      rethrow;
    }
  }

  Future<AvatarUpdateResponseModel> changeAvatar(
      {required AvatarUpdateRequestModel request}) async {
    try {
      const url = ApiConstant.avatarUpdate;
      final token = await AuthLocalDataSource().getToken();
      FormData formData = FormData.fromMap({
        'ref': request.ref,
        'refId': request.refId,
        'field': request.field,
        'files': await MultipartFile.fromFile(request.files),
      });
      if (token != null) {
        final result = await client.post(
          url,
          data: formData,
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );
        final avatarData = AvatarUpdateResponseModel.fromJson(result.data);
        return avatarData;
      } else {
        return const AvatarUpdateResponseModel();
      }
    } catch (e) {
      inspect('Error: $e');
      return const AvatarUpdateResponseModel();
    }
  }

  Future<ForgotPasswordResponseModel> forgotPassword(
      {required ForgotPasswordRequestModel request}) async {
    try {
      const url = ApiConstant.forgotPassword;
      final result = await client.post(
        url,
        data: forgotPasswordRequestModelToJson(request),
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
      final forgotPasswordData = forgotPasswordResponseModelFromJson(result.data);
      return forgotPasswordData;
    } catch (e) {
      inspect('Error: $e');
      rethrow;
    }
  }

  Future<UserResponseModel> resetPassword(
      {required ResetPasswordRequestModel resetPasswordRequestModel}) async {
    try {
      const url = ApiConstant.resetPassword;
      final result = await client.post(
        url,
        data: resetPasswordRequestModel.toJson(),
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

  Future<UpdateScoreResponseModel> updateScores(
      {required ScoreUpdateRequestModel request, required int id}) async {
    try {
      final String url = '${ApiConstant.baseUrlApi}/$id/update-score';
      final result = await client.put(
        url,
        data: request.toJson(),
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': '*/*',
          },
        ),
      );

      // Log the response for debugging
      print('Update Scores Response: ${result.data}');

      if (result.data == null) {
        throw Exception('Invalid response: response data is null');
      }

      final updateScoreData = UpdateScoreResponseModel.fromJson(result.data);
      return updateScoreData;
    } catch (e) {
      print('Error updating scores: $e');
      rethrow;
    }
  }

  Future<SyncCollectionResponseModel> syncCollection({required int id}) async {
    try {
      final String url = '${ApiConstant.syncCollection}/$id/sync-collection';
      final token = await AuthLocalDataSource().getToken();

      if (token != null) {
        final result = await client.put(
          url,
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );

        print('Sync Collection Response: ${result.data}');

        if (result.data == null || result.data['message'] == null) {
          throw Exception('Invalid response: message is null');
        }

        final syncCollectionData = SyncCollectionResponseModel.fromJson(result.data);
        return syncCollectionData;
      } else {
        throw Exception('Token is null');
      }
    } catch (e) {
      print('Error syncing collection: $e');
      rethrow;
    }
  }

  Future<EmailConfirmationResponseModel> emailConfirmation({required String email}) async {
    try {
      const String url = '${ApiConstant.baseUrlApi}/email-confirmation';
      final result = await client.post(
        url,
        data: {'email': email},
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
      final emailConfirmationData = EmailConfirmationResponseModel.fromJson(result.data);
      return emailConfirmationData;
    } catch (e) {
      inspect('Error: $e');
      rethrow;
    }
  }
}
