import 'dart:async';

import 'package:sagara_coding_card_application/data/models/auth_model/forgot_password_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/login_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/register_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/reset_password_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/user_model/avatar_update_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/user_model/score_update_request_model.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/forgot_password_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/sync_collection_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/user_entity/avatar_update_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/user_entity/user_id_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/user_entity/user_response_entity.dart';

import '../entities/auth_entity/user_entity/user_data_response_entity.dart';

abstract class AuthRepository {
  Future<UserResponseEntity?> login({required LoginRequestModel loginRequest});
  Future signInWithGoogle();
  Future<UserResponseEntity?> register({required RegisterRequestModel registerRequest});
  Future<ForgotPasswordResponseEntity?> forgotPassword(
      {required ForgotPasswordRequestModel request});
  Future<UserResponseEntity?> resetPassword(
      {required ResetPasswordRequestModel resetPasswordRequest});
  Future<bool> isLoggedIn();
  bool isSignedInWithGoogle();
  Future<bool> isFirstEntry();
  Future<UserDataResponseEntity?> getCurrentUser();
  Future<UserIdResponseEntity?> getUserId({required int id});
  Future logout();
  Future<AvatarUpdateResponseEntity?> changeAvatar({required AvatarUpdateRequestModel request});
  Future<String?> isAvatarChanged();
  Future<void> increaseCollectionCard();
  Future<bool> checkToken();
  Future<UserDataResponseEntity?> updateScores(
      {required ScoreUpdateRequestModel request, required int id});
  Future<SyncCollectionResponseEntity?> syncCollection({required int id});
}
