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

class GoogleSignInEvent extends AuthEvent {}

class RegisterEvent extends AuthEvent {
  final RegisterRequestModel requestModel;

  RegisterEvent({required this.requestModel});

  @override
  List<Object?> get props => [requestModel];
}

class ForgotPasswordEvent extends AuthEvent {
  final ForgotPasswordRequestModel requestModel;

  ForgotPasswordEvent({required this.requestModel});

  @override
  List<Object?> get props => [requestModel];
}

class ResetPasswordEvent extends AuthEvent {
  final ResetPasswordRequestModel requestModel;

  ResetPasswordEvent({required this.requestModel});

  @override
  List<Object?> get props => [requestModel];
}

class IsLoggedInEvent extends AuthEvent {}

class IsFirstEntryEvent extends AuthEvent {}

class LogoutEvent extends AuthEvent {}

class IncreaseCollectionCardEvent extends AuthEvent {
  final int addCollection;

  IncreaseCollectionCardEvent({required this.addCollection});

  @override
  List<Object?> get props => [addCollection];
}

class CheckTokenEvent extends AuthEvent {}

class UpdateScoresEvent extends AuthEvent {
  final ScoreUpdateRequestModel req;
  final int id;

  UpdateScoresEvent({required this.req, required this.id});

  @override
  List<Object?> get props => [req, id];
}

class SyncCollectionEvent extends AuthEvent {
  final int id;

  SyncCollectionEvent({required this.id});

  @override
  List<Object?> get props => [id];
}

class GetStoredUserIdEvent extends AuthEvent {}

class GetUserByIdEvent extends AuthEvent {
  final int id;

  GetUserByIdEvent({required this.id});

  @override
  List<Object?> get props => [id];
}

class SendEmailConfirmationEvent extends AuthEvent {
  final String email;

  SendEmailConfirmationEvent({required this.email});
}
