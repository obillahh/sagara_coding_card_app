import 'package:sagara_coding_card_application/domain/entities/auth_entity/login_response_entity.dart';
import 'package:sagara_coding_card_application/domain/repositories/auth_repository.dart';

import '../data_sources/remote/auth_remote_data_source.dart';

class AuthImplRepository extends AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthImplRepository({required this.authRemoteDataSource});
  @override
  Future<LoginResponseEntity?> login(String username, String password) async {
    final response = await authRemoteDataSource.login(username, password);
    if (response.user == null) {
      return null;
    }
    final data = LoginResponseEntity(
      jwt: response.jwt ?? '',
      user: UserResponseEntity(
        id: response.user?.id ?? 0,
        username: response.user?.username ?? '',
        email: response.user?.email ?? '',
        provider: response.user?.provider ?? '',
        confirmed: response.user?.confirmed ?? false,
        blocked: response.user?.blocked ?? false,
        createdAt: response.user?.createdAt ?? DateTime.now(),
        updatedAt: response.user?.updatedAt ?? DateTime.now(),
        collectionCard: response.user?.collectionCard ?? 0,
      ),
    );
    return data;
  }
}
