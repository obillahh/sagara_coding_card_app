import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/forgot_password_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/login_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/register_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/reset_password_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/user_model/avatar_update_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/user_model/score_update_request_model.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/email_confirmation_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/forgot_password_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/sync_collection_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/update_score_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/user_entity/avatar_update_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/user_entity/user_id_response_entity.dart';
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
  Future<int?> storeUserId() async {
    return await authLocalDataSource.getUserId();
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
      await authLocalDataSource.saveUserId(data.user.id);

      return data;
    } catch (e) {
      print('Login error: $e');
      return null;
    }
  }

  @override
  Future logout() async {
    await authLocalDataSource.removeToken();
    await authLocalDataSource.removeUserId();
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

  @override
  Future<UpdateScoreResponseEntity?> updateScores(
      {required ScoreUpdateRequestModel request, required int id}) async {
    try {
      final response = await authRemoteDataSource.updateScores(request: request, id: id);
      final data = UpdateScoreResponseEntity(
        id: response.id ?? 0,
        username: response.username ?? '',
        email: response.email ?? '',
        provider: response.provider ?? '',
        password: response.password ?? '',
        resetPasswordToken: response.resetPasswordToken ?? '',
        confirmationToken: response.confirmationToken ?? '',
        confirmed: response.confirmed ?? false,
        blocked: response.blocked ?? false,
        createdAt: response.createdAt ?? DateTime.now(),
        updatedAt: response.updatedAt ?? DateTime.now(),
        collectionCard: response.collectionCard ?? 0,
        scores: response.scores ?? 0,
      );
      return data;
    } catch (e) {
      print('Update scores error: $e');
      return null;
    }
  }

  @override
  Future<SyncCollectionResponseEntity?> syncCollection({required int id}) async {
    try {
      final response = await authRemoteDataSource.syncCollection(id: id);
      if (response.message == null) {
        print('Invalid response: message is null');
        print('Response data: ${response.toJson()}');
        return null;
      }
      final data = SyncCollectionResponseEntity(
        message: response.message ?? '',
      );
      return data;
    } catch (e) {
      print('Sync collection error: $e');
      return null;
    }
  }

  @override
  Future<UserIdResponseEntity?> getUserById({required int id}) async {
    try {
      final response = await authRemoteDataSource.getUserById(id: id);
      final data = UserIdResponseEntity(
        id: response.id ?? 0,
        username: response.username ?? '',
        email: response.email ?? '',
        collectionCard: response.collectionCard ?? 0,
        scores: response.scores ?? 0,
        avatar: UserIdAvatarResponseEntity(
          id: response.avatar?.id ?? 0,
          name: response.avatar?.name ?? '',
          alternativeText: response.avatar?.alternativeText ?? '',
          caption: response.avatar?.caption ?? '',
          width: response.avatar?.width ?? 0,
          height: response.avatar?.height ?? 0,
          hash: response.avatar?.hash ?? '',
          ext: response.avatar?.ext ?? '',
          mime: response.avatar?.mime ?? '',
          size: response.avatar?.size ?? 0,
          url: response.avatar?.url ?? '',
          isUrlSigned: response.avatar?.isUrlSigned ?? false,
        ),
      );
      return data;
    } catch (e) {
      print('Sync error: $e');
      return null;
    }
  }

  @override
  Future<EmailConfirmationResponseEntity?> sendEmailConfirmation({required String email}) async {
    try {
      final response = await authRemoteDataSource.emailConfirmation(email: email);
      final data = EmailConfirmationResponseEntity(
          email: response.email ?? '', sent: response.sent ?? false);
      return data;
    } catch (e) {
      const data = EmailConfirmationResponseEntity(email: '', sent: false);
      return data;
    }
  }
}
