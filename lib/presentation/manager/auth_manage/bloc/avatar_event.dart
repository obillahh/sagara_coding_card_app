part of 'avatar_bloc.dart';

sealed class AvatarEvent extends Equatable {
  const AvatarEvent();

  @override
  List<Object> get props => [];
}

class ChangeAvatarEvent extends AvatarEvent {
  final String avatarUrl;

  const ChangeAvatarEvent(this.avatarUrl);

  @override
  List<Object> get props => [avatarUrl];
}

class IsAvatarChangedEvent extends AvatarEvent {}
