import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/login_request_model.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/is_first_entry_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/is_logged_in_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/logout_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/register_use_case.dart';

import '../../../../data/models/auth_model/register_request_model.dart';
import '../../../../domain/entities/auth_entity/user_response_entity.dart';
import '../../../../domain/use_cases/auth_use_case/get_current_user_use_case.dart';
import '../../../../domain/use_cases/auth_use_case/login_use_case.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  final RegisterUseCase registerUseCase;
  final IsLoggedInUseCase isLoggedInUseCase;
  final IsFirstEntryUseCase isFirstEntryUseCase;
  final LogoutUseCase logoutUseCase;
  final GetCurrentUserUseCase getCurrentUserUseCase;
  AuthBloc({
    required this.registerUseCase,
    required this.loginUseCase,
    required this.isLoggedInUseCase,
    required this.isFirstEntryUseCase,
    required this.logoutUseCase,
    required this.getCurrentUserUseCase,
  }) : super(AuthInitial()) {
    on<AuthEvent>(
      (event, emit) async {
        if (event is LoginEvent) {
          final UserResponseEntity? data = await loginUseCase(
            event.requestModel,
          );
          if (data != null) {
            emit(AuthLoginSuccess(login: data));
          } else {
            emit(AuthFailure(error: 'Login Failed'));
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
                  UserDataEntity(
                    id: 0,
                    username: 'Guest',
                    email: 'guest@example.com',
                    provider: 'guest',
                    confirmed: false,
                    blocked: false,
                    createdAt: DateTime.now(),
                    updatedAt: DateTime.now(),
                    collectionCard: null,
                  ),
            ),
          );
        }
        if (event is LogoutEvent) {
          await logoutUseCase();
          emit(AuthLogoutSuccess());
        }
      },
    );
  }
}
