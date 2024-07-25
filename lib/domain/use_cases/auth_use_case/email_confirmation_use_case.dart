import 'package:sagara_coding_card_application/domain/entities/auth_entity/email_confirmation_response_entity.dart';
import 'package:sagara_coding_card_application/domain/repositories/auth_repository.dart';

class EmailConfirmationUseCase {
  final AuthRepository authRepository;

  EmailConfirmationUseCase({required this.authRepository});

  Future<EmailConfirmationResponseEntity?> call(String email) async =>
      await authRepository.sendEmailConfirmation(email: email);
}
