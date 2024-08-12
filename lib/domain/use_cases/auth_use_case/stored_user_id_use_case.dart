import 'package:sagara_coding_card_application/domain/repositories/auth_repository.dart';

class StoredUserIdUseCase {
  final AuthRepository authRepository;

  StoredUserIdUseCase({required this.authRepository});

  Future<int?> call() async => await authRepository.storeUserId();
}
