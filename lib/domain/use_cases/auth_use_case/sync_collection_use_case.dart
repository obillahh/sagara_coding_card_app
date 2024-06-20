import 'package:sagara_coding_card_application/domain/entities/auth_entity/sync_collection_response_entity.dart';
import 'package:sagara_coding_card_application/domain/repositories/auth_repository.dart';

class SyncCollectionUseCase {
  final AuthRepository authRepository;

  SyncCollectionUseCase({required this.authRepository});

  Future<SyncCollectionResponseEntity?> call({required int id}) async =>
      await authRepository.syncCollection(id: id);
}
