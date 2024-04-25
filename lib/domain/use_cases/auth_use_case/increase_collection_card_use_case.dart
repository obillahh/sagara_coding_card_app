import 'package:sagara_coding_card_application/domain/repositories/auth_repository.dart';

class IncreaseCollectionCardUseCase {
  final AuthRepository authRepository;
  IncreaseCollectionCardUseCase({required this.authRepository});
  Future<void> call() async => await authRepository.increaseCollectionCard();
}
