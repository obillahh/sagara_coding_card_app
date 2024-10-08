import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/forgot_password_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/login_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/reset_password_request_model.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/user_model/score_update_request_model.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/email_confirmation_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/forgot_password_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/sync_collection_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/update_score_response_entity.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/user_entity/user_id_response_entity.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/check_token_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/email_confirmation_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/forgot_password_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/stored_user_id_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/get_user_by_id_user_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/increase_collection_card_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/is_first_entry_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/is_logged_in_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/logout_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/register_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/reset_password_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/sign_in_with_google_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/sync_collection_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/update_scores_use_case.dart';

import '../../../../data/models/auth_model/register_request_model.dart';
import '../../../../domain/entities/auth_entity/user_entity/user_response_entity.dart';
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
  final IncreaseCollectionCardUseCase increaseCollectionCardUseCase;
  final CheckTokenUseCase checkTokenUseCase;
  final UpdateScoresUseCase updateScoresUseCase;
  final SyncCollectionUseCase syncCollectionUseCase;
  final GetUserByIdUseCase getUserByIdUseCase;
  final StoredUserIdUseCase storedUserIdUseCase;
  final EmailConfirmationUseCase emailConfirmationUseCase;

  AuthBloc({
    required this.registerUseCase,
    required this.loginUseCase,
    required this.signInWithGoogleUseCase,
    required this.forgotPasswordUseCase,
    required this.resetPasswordUseCase,
    required this.isLoggedInUseCase,
    required this.isFirstEntryUseCase,
    required this.logoutUseCase,
    required this.increaseCollectionCardUseCase,
    required this.checkTokenUseCase,
    required this.updateScoresUseCase,
    required this.syncCollectionUseCase,
    required this.storedUserIdUseCase,
    required this.getUserByIdUseCase,
    required this.emailConfirmationUseCase,
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
          final UserResponseEntity? data = await registerUseCase(event.requestModel);
          if (data != null) {
            emit(AuthRegisterSuccess(register: data));
          } else {
            emit(AuthFailure(error: 'Registration Failed'));
          }
        }
        if (event is ForgotPasswordEvent) {
          final data = await forgotPasswordUseCase(request: event.requestModel);
          if (data != null) {
            emit(ForgotPasswordSuccess(forgotPassword: data));
          } else {
            emit(AuthFailure(error: 'Failed to reset password'));
          }
        }
        if (event is ResetPasswordEvent) {
          final data = await resetPasswordUseCase(request: event.requestModel);
          if (data != null) {
            emit(ResetPasswordSuccess(response: data));
          } else {
            emit(AuthFailure(error: 'Failed to reset password'));
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
            if (data != null) {
              emit(ScoresUpdated(response: data));
            } else {
              emit(AuthErrorState('Failed to update scores: Invalid response.'));
            }
          } catch (e) {
            emit(AuthErrorState('Failed to update scores: $e'));
          }
        }
        if (event is SyncCollectionEvent) {
          try {
            final data = await syncCollectionUseCase(id: event.id);
            if (data != null) {
              emit(CollectionSynced(syncCollection: data));
            } else {
              emit(AuthErrorState('Failed to sync collection: Invalid response.'));
            }
          } catch (e) {
            emit(AuthErrorState('Failed to sync collection: $e'));
          }
        }
        if (event is GetStoredUserIdEvent) {
          try {
            final id = await storedUserIdUseCase();
            if (id != null) {
              emit(UserIdStoredState(userId: id));
            } else {
              emit(AuthErrorState('User ID not found'));
            }
          } catch (e) {
            emit(AuthErrorState('Failed to get stored user ID: $e'));
          }
        }
        if (event is GetUserByIdEvent) {
          try {
            final data = await getUserByIdUseCase(id: event.id);
            if (data != null) {
              emit(GetUserByIdSuccessState(user: data));
            } else {
              emit(AuthErrorState('User data not found'));
            }
          } catch (e) {
            emit(AuthErrorState('Failed to get user by ID: $e'));
          }
        }
        if (event is SendEmailConfirmationEvent) {
          try {
            final data = await emailConfirmationUseCase(event.email);
            emit(EmailConfirmationSuccess(response: data!));
          } catch (e) {
            emit(AuthErrorState('Failed to send email confirmation: $e'));
          }
        }
      },
    );
  }
}
