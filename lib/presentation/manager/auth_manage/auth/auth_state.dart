part of 'auth_bloc.dart';

@immutable
sealed class AuthState extends Equatable {
  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {}

class AuthAuthenticated extends AuthState {}

class AuthNotAuthenticated extends AuthState {}

class AuthLoginSuccess extends AuthState {
  final UserResponseEntity login;

  AuthLoginSuccess({required this.login});

  @override
  List<Object?> get props => [login];
}

class AuthGoogleSignInState extends AuthState {
  final GoogleSignInAccount googleSignInAccount;

  AuthGoogleSignInState({required this.googleSignInAccount});

  @override
  List<Object?> get props => [googleSignInAccount];
}

class AuthRegisterSuccess extends AuthState {
  final UserResponseEntity register;

  AuthRegisterSuccess({required this.register});

  @override
  List<Object?> get props => [register];
}

class AuthFirstEntry extends AuthState {}

class AuthNotFirstEntry extends AuthState {}

class AuthLogoutSuccess extends AuthState {}

class AuthFailure extends AuthState {
  final String error;

  AuthFailure({required this.error});
}

class AuthErrorState extends AuthState {
  final String error;

  AuthErrorState(this.error);

  @override
  List<Object?> get props => [error];
}

class CollectionCardIncreased extends AuthState {
  final int collectionCard;

  CollectionCardIncreased({required this.collectionCard});

  @override
  List<Object?> get props => [collectionCard];
}

class TokenChecked extends AuthState {
  final bool isTokenValid;

  TokenChecked({required this.isTokenValid});

  @override
  List<Object?> get props => [isTokenValid];
}

class ForgotPasswordSuccess extends AuthState {
  final ForgotPasswordResponseEntity forgotPassword;

  ForgotPasswordSuccess({required this.forgotPassword});

  @override
  List<Object?> get props => [forgotPassword];
}

class ResetPasswordSuccess extends AuthState {
  final UserResponseEntity response;

  ResetPasswordSuccess({required this.response});
}

class ScoresUpdated extends AuthState {
  final UpdateScoreResponseEntity response;

  ScoresUpdated({required this.response});

  @override
  List<Object?> get props => [response];
}

class CollectionSynced extends AuthState {
  final SyncCollectionResponseEntity syncCollection;

  CollectionSynced({required this.syncCollection});

  @override
  List<Object?> get props => [syncCollection];
}

class UserIdStoredState extends AuthState {
  final int userId;

  UserIdStoredState({required this.userId});

  @override
  List<Object?> get props => [userId];
}

class GetUserByIdSuccessState extends AuthState {
  final UserIdResponseEntity user;

  GetUserByIdSuccessState({required this.user});

  @override
  List<Object?> get props => [user];
}

class EmailConfirmationSuccess extends AuthState {
  final EmailConfirmationResponseEntity response;

  EmailConfirmationSuccess({required this.response});
}
