import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/forgot_password_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/login_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/reset_password_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/user_model/score_update_request_model.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/forgot_password_response_entity.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/check_token_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/forgot_password_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/increase_collection_card_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/is_first_entry_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/is_logged_in_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/logout_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/register_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/reset_password_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/sign_in_with_google_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/update_scores_use_case.dart';

import '../../../../data/models/auth_model/register_request_model.dart';
import '../../../../domain/entities/auth_entity/user_entity/user_data_response_entity.dart';
import '../../../../domain/entities/auth_entity/user_entity/user_response_entity.dart';
import '../../../../domain/use_cases/auth_use_case/get_current_user_use_case.dart';
import '../../../../domain/use_cases/auth_use_case/login_use_case.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  final SignInWithGoogleUseCase signInWithGoogleUseCase;
  final RegisterUseCase registerUseCase;
  final ForgotPasswordUseCase forgotPasswordUseCase;
  final ResetPasswordUseCase resetPasswordUseCase;
  final IsLoggedInUseCase isLoggedInUseCase;
  final IsFirstEntryUseCase isFirstEntryUseCase;
  final LogoutUseCase logoutUseCase;
  final GetCurrentUserUseCase getCurrentUserUseCase;
  final IncreaseCollectionCardUseCase increaseCollectionCardUseCase;
  final CheckTokenUseCase checkTokenUseCase;
  final UpdateScoresUseCase updateScoresUseCase;
  AuthBloc({
    required this.registerUseCase,
    required this.loginUseCase,
    required this.signInWithGoogleUseCase,
    required this.forgotPasswordUseCase,
    required this.resetPasswordUseCase,
    required this.isLoggedInUseCase,
    required this.isFirstEntryUseCase,
    required this.logoutUseCase,
    required this.getCurrentUserUseCase,
    required this.increaseCollectionCardUseCase,
    required this.checkTokenUseCase,
    required this.updateScoresUseCase,
  }) : super(AuthInitial()) {
    on<AuthEvent>(
      (event, emit) async {
        if (event is LoginEvent) {
          final UserResponseEntity? data = await loginUseCase(event.requestModel);
          if (data != null) {
            emit(AuthLoginSuccess(login: data));
          } else {
            emit(AuthFailure(error: 'Login Failed'));
          }
        }
        if (event is GoogleSignInEvent) {
          try {
            final data = await signInWithGoogleUseCase.call();
            emit(AuthGoogleSignInState(googleSignInAccount: data));
          } catch (e) {
            emit(AuthFailure(error: e.toString()));
          }
        }
        if (event is RegisterEvent) {
          final UserResponseEntity? data = await registerUseCase(
            event.requestModel,
          );
          if (data != null) {
            emit(AuthRegisterSuccess(register: data));
          } else {
            emit(AuthFailure(error: 'Login Failed'));
          }
        }
        if (event is ForgotPasswordEvent) {
          final data = await forgotPasswordUseCase(request: event.requestModel);
          if (data != null) {
            emit(ForgotPasswordSuccess(forgotPassword: data));
          } else {
            emit(AuthFailure(error: 'Failed'));
          }
        }
        if (event is ResetPasswordEvent) {
          final data = await resetPasswordUseCase(request: event.requestModel);
          if (data != null) {
            emit(ResetPasswordSuccess(response: data));
          } else {
            emit(AuthFailure(error: 'Failed'));
          }
        }
        if (event is IsLoggedInEvent) {
          final isLoggedIn = await isLoggedInUseCase();
          if (isLoggedIn) {
            emit(AuthAuthenticated());
          } else {
            emit(AuthNotAuthenticated());
          }
        }
        if (event is IsFirstEntryEvent) {
          final isFirstEntry = await isFirstEntryUseCase();
          if (isFirstEntry) {
            emit(AuthFirstEntry());
          } else {
            emit(AuthNotFirstEntry());
          }
        }
        if (event is GetCurrentUserEvent) {
          final user = await getCurrentUserUseCase();
          emit(
            CurrentUserState(
              currentUser: user ??
                  const UserDataResponseEntity(
                    id: 0,
                    username: 'Guest',
                    email: 'guest@example.com',
                    collectionCard: 0,
                    scores: 0,
                  ),
            ),
          );
        }
        if (event is LogoutEvent) {
          await logoutUseCase();
          emit(AuthLogoutSuccess());
        }
        if (event is IncreaseCollectionCardEvent) {
          try {
            await increaseCollectionCardUseCase();
            emit(CollectionCardIncreased(collectionCard: event.addCollection));
          } catch (e) {
            emit(AuthErrorState('Failed to increase collection card: $e'));
          }
        }
        if (event is CheckTokenEvent) {
          try {
            final isTokenValid = await checkTokenUseCase();
            emit(TokenChecked(isTokenValid: isTokenValid));
          } catch (e) {
            emit(AuthErrorState('Failed to check token: $e'));
          }
        }
        if (event is UpdateScoresEvent) {
          try {
            final data = await updateScoresUseCase(request: event.req, id: event.id);
            emit(ScoresUpdated(user: data!));
          } catch (e) {
            emit(AuthErrorState('Failed to update scores: $e'));
          }
        }
      },
    );
  }
}
