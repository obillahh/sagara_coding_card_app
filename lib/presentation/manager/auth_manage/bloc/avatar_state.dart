part of 'avatar_bloc.dart';

sealed class AvatarState extends Equatable {
  const AvatarState();

  @override
  List<Object> get props => [];
}

class AvatarInitial extends AvatarState {}

class ChangeAvatarState extends AvatarState {
  final String avatarUrl;

  const ChangeAvatarState({required this.avatarUrl});

  @override
  List<Object> get props => [avatarUrl];
}

class AvatarChangedState extends AvatarState {
  final String avatarUrl;

  const AvatarChangedState({required this.avatarUrl});

  @override
  List<Object> get props => [avatarUrl];
}
