import 'package:sagara_coding_card_application/domain/repositories/auth_repository.dart';

class IsFirstEntryUseCase {
  final AuthRepository authRepository;

  IsFirstEntryUseCase({required this.authRepository});

  Future<bool> call() async => await authRepository.isFirstEntry();
}
