part of 'avatar_bloc.dart';

sealed class AvatarState extends Equatable {
  const AvatarState();

  @override
  List<Object> get props => [];
}

class AvatarInitial extends AvatarState {}

class AvatarChangedState extends AvatarState {
  final AvatarUpdateResponseEntity response;

  const AvatarChangedState({required this.response});

  @override
  List<Object> get props => [response];
}
