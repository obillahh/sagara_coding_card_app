part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class LoginEvent extends AuthEvent {
  final String identifier;
  final String password;

  LoginEvent({required this.identifier, required this.password});
}

class IsLoggedInEvent extends AuthEvent {}

class GetCurrentUserEvent extends AuthEvent {}

class LogoutEvent extends AuthEvent {}