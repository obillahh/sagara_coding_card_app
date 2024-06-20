import 'package:sagara_coding_card_application/domain/entities/auth_entity/user_entity/user_id_response_entity.dart';
import 'package:sagara_coding_card_application/domain/repositories/auth_repository.dart';

class GetUserIdUseCase {
  final AuthRepository authRepository;

  GetUserIdUseCase({required this.authRepository});

  Future<UserIdResponseEntity?> call({required int id}) async =>
      await authRepository.getUserId(id: id);
}
