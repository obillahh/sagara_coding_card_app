part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoginEvent extends AuthEvent {
  final LoginRequestModel requestModel;

  LoginEvent({required this.requestModel});

  @override
  List<Object?> get props => [requestModel];
}

class RegisterEvent extends AuthEvent {
  final RegisterRequestModel requestModel;

  RegisterEvent({required this.requestModel});

  @override
  List<Object?> get props => [requestModel];
}

class IsLoggedInEvent extends AuthEvent {}

class IsFirstEntryEvent extends AuthEvent {}

class GetCurrentUserEvent extends AuthEvent {}

class LogoutEvent extends AuthEvent {}

class IncreaseCollectionCardEvent extends AuthEvent {
  final int addCollection;

  IncreaseCollectionCardEvent({required this.addCollection});

  @override
  List<Object?> get props => [addCollection];
}
