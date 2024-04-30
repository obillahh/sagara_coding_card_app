import 'package:google_sign_in/google_sign_in.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/login_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/register_request_model.dart';
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
  Future<void> changeAvatar({required String avatarUrl}) async {
    try {
      await authLocalDataSource.setAvatarProfile(avatarUrl);
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
  bool isSignedInWithGoogle() {
    // TODO: implement isSignedInWithGoogle
    throw UnimplementedError();
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
  Future<UserResponseEntity?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      if (googleUser == null) {
        return null;
      }

      // final GoogleSignInAuthentication googleAuth =
      //     await googleUser.authentication;

      // final googleSignInRequest = GoogleSignInRequestModel(
      //   idToken: googleAuth?.idToken,
      // );

      // UserCredential userCredentialResult =
      //     await FirebaseAuth.instance.signInWithCredential(credential);
      // return userCredentialResult.user;
    } catch (e) {
      print('Err signInWithGoogle $e');
      return null;
    }
    return null;
  }

  @override
  Future<void> increaseCollectionCard() async {
    try {
      await authLocalDataSource.increaseCollectionCard();
    } catch (e) {
      print('Error increasing collection card: $e');
    }
  }
}
