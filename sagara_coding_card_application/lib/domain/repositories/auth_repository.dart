import 'package:sagara_coding_card_application/domain/entities/auth_entity/login_response_entity.dart';

abstract class AuthRepository {
  Future<LoginResponseEntity?> login(String username, String password);
}
