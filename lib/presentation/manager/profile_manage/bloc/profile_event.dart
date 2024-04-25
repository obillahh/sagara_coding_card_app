part of 'profile_bloc.dart';

sealed class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object> get props => [];
}

class SetAvatarProfileEvent extends ProfileEvent {
  final String avatarProfile;

  const SetAvatarProfileEvent(this.avatarProfile);

  @override
  List<Object> get props => [avatarProfile];
}

class RestoreAvatarProfileEvent extends ProfileEvent {}
