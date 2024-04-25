import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/change_avatar_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/is_avatar_changed_use_case.dart';

part 'avatar_event.dart';
part 'avatar_state.dart';

class AvatarBloc extends Bloc<AvatarEvent, AvatarState> {
  final ChangeAvatarUseCase changeAvatarUseCase;
  final IsAvatarChangedUseCase isAvatarChangedUseCase;
  AvatarBloc({
    required this.changeAvatarUseCase,
    required this.isAvatarChangedUseCase,
  }) : super(AvatarInitial()) {
    on<AvatarEvent>((event, emit) async {
      print('Received event: $event');
      if (event is ChangeAvatarEvent) {
        try {
          await changeAvatarUseCase.call(avatarUrl: event.avatarUrl);
          emit(ChangeAvatarState(avatarUrl: event.avatarUrl));
        } catch (e) {
          print('Error changing avatar: $e');
        }
      }
      if (event is IsAvatarChangedEvent) {
        final isAvatarChanged = await isAvatarChangedUseCase.call();
        if (isAvatarChanged != null) {
          emit(AvatarChangedState(avatarUrl: isAvatarChanged));
        }
      }
    });
  }
}
