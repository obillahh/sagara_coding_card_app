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

class AuthRegisterSuccess extends AuthState {
  final UserResponseEntity register;

  AuthRegisterSuccess({required this.register});

  @override
  List<Object?> get props => [register];
}

class AuthFirstEntry extends AuthState {}

class AuthNotFirstEntry extends AuthState {}

class AuthLogoutSuccess extends AuthState {}

class CurrentUserState extends AuthState {
  final UserDataResponseEntity? currentUser;

  CurrentUserState({required this.currentUser});

  @override
  List<Object?> get props => [currentUser];
}

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
