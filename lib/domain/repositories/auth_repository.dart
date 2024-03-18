import 'package:sagara_coding_card_application/data/models/auth_model/login_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/register_request_model.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/user_response_entity.dart';

abstract class AuthRepository {
  Future<UserResponseEntity?> login({required LoginRequestModel loginRequest});

  Future<UserResponseEntity?> signInWithGoogle();

  Future<UserResponseEntity?> register(
      {required RegisterRequestModel registerRequest});

  Future<bool> isLoggedIn();

  bool isSignedInWithGoogle();

  Future<bool> isFirstEntry();

  Future<UserDataEntity?> getCurrentUser();

  Future logout();
}
