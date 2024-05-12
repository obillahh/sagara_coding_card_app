part of 'avatar_bloc.dart';

sealed class AvatarEvent extends Equatable {
  const AvatarEvent();

  @override
  List<Object> get props => [];
}

class ChangeAvatarEvent extends AvatarEvent {
  final AvatarUpdateRequestModel request;

  const ChangeAvatarEvent({required this.request});

  @override
  List<Object> get props => [request];
}

class IsAvatarChangedEvent extends AvatarEvent {}
