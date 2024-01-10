import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/login_response_entity.dart';

import '../../../../domain/use_cases/auth_use_case/login_use_case.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  AuthBloc({required this.loginUseCase}) : super(AuthInitial()) {
    on<AuthEvent>(
      (event, emit) async {
        if (event is LoginEvent) {
          emit(AuthLoading());
          final LoginResponseEntity? data = await loginUseCase(
            event.username,
            event.password,
          );
          if (data != null) {
            emit(AuthSuccess(login: data));
          } else {
            emit(AuthFailure());
          }
        }
      },
    );
  }
}
