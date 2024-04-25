part of 'profile_bloc.dart';

sealed class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

final class ProfileInitial extends ProfileState {}

class AvatarProfileSet extends ProfileState {
  final String avatar;

  const AvatarProfileSet({required this.avatar});

  @override
  List<Object> get props => [avatar];
}
