import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/login_response_entity.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/is_logged_in_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/logout_use_case.dart';

import '../../../../domain/use_cases/auth_use_case/get_current_user_use_case.dart';
import '../../../../domain/use_cases/auth_use_case/login_use_case.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  final IsLoggedInUseCase isLoggedInUseCase;
  final LogoutUseCase logoutUseCase;
  final GetCurrentUserUseCase getCurrentUserUseCase;
  AuthBloc({
    required this.loginUseCase,
    required this.isLoggedInUseCase,
    required this.logoutUseCase,
    required this.getCurrentUserUseCase,
  }) : super(AuthInitial()) {
    on<AuthEvent>(
      (event, emit) async {
        if (event is LoginEvent) {
          final LoginResponseEntity? data = await loginUseCase(
            event.identifier,
            event.password,
          );
          if (data != null) {
            emit(AuthSuccess(login: data));
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
        if (event is GetCurrentUserEvent) {
          final user = await getCurrentUserUseCase();
          emit(
            CurrentUserState(
              currentUser: user ??
                  UserResponseEntity(
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
          emit(AuthNotAuthenticated());
        }
      },
    );
  }
}
