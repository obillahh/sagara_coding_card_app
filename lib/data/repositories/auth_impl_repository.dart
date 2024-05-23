import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/forgot_password_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/login_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/register_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/reset_password_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/user_model/avatar_update_request_model.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/forgot_password_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/user_entity/avatar_update_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/user_entity/user_response_entity.dart';
import 'package:sagara_coding_card_application/domain/repositories/auth_repository.dart';

import '../../domain/entities/auth_entity/user_entity/user_data_response_entity.dart';
import '../data_sources/local/auth_local_data_source.dart';
import '../data_sources/remote/auth_remote_data_source.dart';

class AuthImplRepository extends AuthRepository {
  AuthImplRepository({
    required this.authRemoteDataSource,
    required this.authLocalDataSource,
  });

  final AuthLocalDataSource authLocalDataSource;
  final AuthRemoteDataSource authRemoteDataSource;

  @override
  Future<AvatarUpdateResponseEntity?> changeAvatar(
      {required AvatarUpdateRequestModel request}) async {
    try {
      final response = await authRemoteDataSource.changeAvatar(request: request);
      final updateResponse = AvatarUpdateResponseEntity(
        id: response.id ?? 0,
        name: response.name ?? '',
        alternativeText: response.alternativeText ?? '',
        caption: response.caption ?? '',
        width: response.width ?? 0,
        height: response.height ?? 0,
        hash: response.hash ?? '',
        ext: response.ext ?? '',
        mime: response.mime ?? '',
        size: response.size ?? 0,
        url: response.url ?? '',
        previewUrl: response.previewUrl ?? '',
        provider: response.provider ?? '',
        providerMetadata: response.providerMetadata,
      );
      return updateResponse;
    } catch (e) {
      print('Error changing avatar: $e');
      throw Exception('Failed to change avatar');
    }
  }

  @override
  Future<UserDataResponseEntity?> getCurrentUser() async {
    final isLoggedIn = await authLocalDataSource.getToken() != null;
    if (isLoggedIn) {
      return await authLocalDataSource.getUserData();
    }
    return null;
  }

  @override
  Future<String?> isAvatarChanged() async {
    try {
      final storedAvatarUrl = await authLocalDataSource.getAvatarProfile();
      return storedAvatarUrl;
    } catch (e) {
      print('Error getting stored avatar URL: $e');
      throw Exception('Failed to get stored avatar URL');
    }
  }

  @override
  Future<bool> isFirstEntry() async {
    return await authLocalDataSource.isFirstEntry();
  }

  @override
  Future<bool> isLoggedIn() async {
    return await authLocalDataSource.getToken() != null;
  }

  @override
  Future<UserResponseEntity?> login({required LoginRequestModel loginRequest}) async {
    try {
      final response = await authRemoteDataSource.login(loginRequestModel: loginRequest);

      if (response.user == null) {
        print('Invalid response: user is null');
        print('Response data: ${response.toJson()}');
        return null;
      }

      final data = UserResponseEntity(
        jwt: response.jwt ?? '',
        user: UserDataResponseEntity(
          id: response.user?.id ?? 0,
          username: response.user?.username ?? '',
          email: response.user?.email ?? '',
          collectionCard: response.user?.collectionCard ?? 0,
          scores: response.user?.scores ?? 0,
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
  Future logout() async {
    await authLocalDataSource.removeToken();
    await authLocalDataSource.removeUserData();
  }

  @override
  Future<UserResponseEntity?> register({required RegisterRequestModel registerRequest}) async {
    try {
      final response = await authRemoteDataSource.register(registerRequestModel: registerRequest);
      if (response.user == null) {
        print('Invalid response: user is null');
        print('Response data: ${response.toJson()}');
        return null;
      }
      final data = UserResponseEntity(
        jwt: response.jwt ?? '',
        user: UserDataResponseEntity(
          id: response.user?.id ?? 0,
          username: response.user?.username ?? '',
          email: response.user?.email ?? '',
          collectionCard: response.user?.collectionCard ?? 0,
          scores: response.user?.scores ?? 0,
        ),
      );
      return data;
    } catch (e) {
      print('Login error: $e');
      return null;
    }
  }

  @override
  Future<void> increaseCollectionCard() async {
    try {
      await authLocalDataSource.increaseCollectionCard();
    } catch (e) {
      print('Error increasing collection card: $e');
    }
  }

  @override
  bool isSignedInWithGoogle() {
    // TODO: implement isSignedInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future signInWithGoogle() async {
    return await authRemoteDataSource.googleSignIn();
  }

  @override
  Future<bool> checkToken() async {
    try {
      final token = await authLocalDataSource.getToken();
      final decodedToken = JWT.decode(token!);
      final expiration = decodedToken.payload['exp'];
      final expirationDateTime = DateTime.fromMillisecondsSinceEpoch(expiration * 1000);
      final now = DateTime.now();
      return !expirationDateTime.isBefore(now);
    } catch (e) {
      print('Error checking token: $e');
      return false;
    }
  }

  @override
  Future<ForgotPasswordResponseEntity?> forgotPassword(
      {required ForgotPasswordRequestModel request}) async {
    try {
      final response = await authRemoteDataSource.forgotPassword(request: request);
      final data = ForgotPasswordResponseEntity(ok: response.ok ?? false);
      return data;
    } catch (e) {
      const data = ForgotPasswordResponseEntity(ok: false);
      return data;
    }
  }

  @override
  Future<UserResponseEntity?> resetPassword(
      {required ResetPasswordRequestModel resetPasswordRequest}) async {
    try {
      final response =
          await authRemoteDataSource.resetPassword(resetPasswordRequestModel: resetPasswordRequest);
      if (response.user == null) {
        print('Invalid response: user is null');
        print('Response data: ${response.toJson()}');
        return null;
      }
      final data = UserResponseEntity(
        jwt: response.jwt ?? '',
        user: UserDataResponseEntity(
          id: response.user?.id ?? 0,
          username: response.user?.username ?? '',
          email: response.user?.email ?? '',
          collectionCard: response.user?.collectionCard ?? 0,
          scores: response.user?.scores ?? 0,
        ),
      );
      return data;
    } catch (e) {
      print('Login error: $e');
      return null;
    }
  }
}
