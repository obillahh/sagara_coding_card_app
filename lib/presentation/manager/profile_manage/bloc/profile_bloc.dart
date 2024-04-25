import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sagara_coding_card_application/domain/use_cases/profile_use_case/restore_avatar_profile_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/profile_use_case/set_avatar_profile_use_case.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final SetAvatarProfileUseCase setAvatarProfileUseCase;
  final RestoreAvatarProfileUseCase restoreAvatarProfileUseCase;

  ProfileBloc({
    required this.setAvatarProfileUseCase,
    required this.restoreAvatarProfileUseCase,
  }) : super(ProfileInitial()) {
    on<ProfileEvent>((event, emit) async {
      if (event is SetAvatarProfileEvent) {
        await setAvatarProfileUseCase(avatarUrl: event.avatarProfile);
        emit(AvatarProfileSet(avatar: event.avatarProfile));
      } else if (event is RestoreAvatarProfileEvent) {
        final avatarUrl = await restoreAvatarProfileUseCase();
        if (avatarUrl != null) {
          emit(AvatarProfileSet(avatar: avatarUrl));
        }
      }
    });
  }
}
