part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthSuccess extends AuthState {
  final LoginResponseEntity login;

  AuthSuccess({required this.login});
}

final class AuthFailure extends AuthState {}
