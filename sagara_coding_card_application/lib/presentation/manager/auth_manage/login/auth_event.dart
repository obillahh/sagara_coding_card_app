part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class LoginEvent extends AuthEvent {
  final LoginRequestModel requestModel;

  LoginEvent({required this.requestModel});
}

class RegisterEvent extends AuthEvent {
  final RegisterRequestModel requestModel;

  RegisterEvent({required this.requestModel});
}

class IsLoggedInEvent extends AuthEvent {}

class GetCurrentUserEvent extends AuthEvent {}

class LogoutEvent extends AuthEvent {}
