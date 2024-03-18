part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

class AuthInitial extends AuthState {}

class AuthAuthenticated extends AuthState {}

class AuthNotAuthenticated extends AuthState {}

class AuthLoginSuccess extends AuthState {
  final UserResponseEntity login;

  AuthLoginSuccess({required this.login});
}

class AuthRegisterSuccess extends AuthState {
  final UserResponseEntity register;

  AuthRegisterSuccess({required this.register});
}

class AuthFirstEntry extends AuthState {}

class AuthNotFirstEntry extends AuthState {}

class AuthLogoutSuccess extends AuthState {}

class CurrentUserState extends AuthState {
  final UserDataEntity? currentUser;

  CurrentUserState({required this.currentUser});
}

class AuthFailure extends AuthState {
  final String error;

  AuthFailure({required this.error});
}

class AuthErrorState extends AuthState {
  final String error;

  AuthErrorState(this.error);
}
