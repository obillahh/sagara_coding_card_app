import 'package:sagara_coding_card_application/data/models/auth_model/login_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/register_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/user_model/avatar_update_request_model.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/user_entity/avatar_update_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/user_entity/user_response_entity.dart';

import '../entities/auth_entity/user_entity/user_data_response_entity.dart';

abstract class AuthRepository {
  Future<UserResponseEntity?> login({required LoginRequestModel loginRequest});

  Future signInWithGoogle();

  Future<UserResponseEntity?> register({required RegisterRequestModel registerRequest});

  Future<bool> isLoggedIn();

  bool isSignedInWithGoogle();

  Future<bool> isFirstEntry();

  Future<UserDataResponseEntity?> getCurrentUser();

  Future logout();

  Future<AvatarUpdateResponseEntity?> changeAvatar({required AvatarUpdateRequestModel request});

  Future<String?> isAvatarChanged();

  Future<void> increaseCollectionCard();

  Future<bool> checkToken();
}
