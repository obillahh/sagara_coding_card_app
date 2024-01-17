import 'package:sagara_coding_card_application/domain/entities/auth_entity/login_response_entity.dart';

abstract class AuthRepository {
  Future<LoginResponseEntity?> login(String identifier, String password);

  Future<bool> isLoggedIn();

  Future<UserResponseEntity?> getCurrentUser();

  Future<void> logout();
}
