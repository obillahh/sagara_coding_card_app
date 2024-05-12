import 'package:sagara_coding_card_application/data/models/auth_model/user_model/avatar_update_request_model.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/user_entity/avatar_update_response_entity.dart';
import 'package:sagara_coding_card_application/domain/repositories/auth_repository.dart';

class ChangeAvatarUseCase {
  final AuthRepository authRepository;

  ChangeAvatarUseCase({required this.authRepository});

  Future<AvatarUpdateResponseEntity?> call({required AvatarUpdateRequestModel request}) async =>
      await authRepository.changeAvatar(request: request);
}
