import 'package:sagara_coding_card_application/domain/entities/auth_entity/login_response_entity.dart';
import 'package:sagara_coding_card_application/domain/repositories/auth_repository.dart';

import '../data_sources/local/auth_local_data_source.dart';
import '../data_sources/remote/auth_remote_data_source.dart';

class AuthImplRepository extends AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  final AuthLocalDataSource authLocalDataSource;

  AuthImplRepository({
    required this.authRemoteDataSource,
    required this.authLocalDataSource,
  });
  @override
  Future<LoginResponseEntity?> login(String identifier, String password) async {
    try {
      final response = await authRemoteDataSource.login(identifier, password);

      // Check if the response has a user field
      if (response.user == null) {
        print('Invalid response: user is null');
        print('Response data: ${response.toJson()}');
        return null; // Or handle this case as appropriate for your application
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

      await authLocalDataSource.saveToken(data.jwt);
      await authLocalDataSource.saveUserData(data.user);

      return data;
    } catch (e) {
      print('Login error: $e');
      return null;
    }
  }

  @override
  Future<bool> isLoggedIn() async {
    return await authLocalDataSource.getToken() != null;
  }

  @override
  Future<UserResponseEntity?> getCurrentUser() async {
    final isLoggedIn = await authLocalDataSource.getToken() != null;
    if (isLoggedIn) {
      return await authLocalDataSource.getUserData();
    }
    return null;
  }

  @override
  Future logout() async {
    await authLocalDataSource.removeToken();
    await authLocalDataSource.removeUserData();
  }
}
