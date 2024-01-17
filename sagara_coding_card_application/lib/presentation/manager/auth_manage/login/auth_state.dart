part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthAuthenticated extends AuthState {}

final class AuthNotAuthenticated extends AuthState {}

class AuthSuccess extends AuthState {
  final LoginResponseEntity login;

  AuthSuccess({required this.login});
}

class CurrentUserState extends AuthState {
  final UserResponseEntity? currentUser;

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
