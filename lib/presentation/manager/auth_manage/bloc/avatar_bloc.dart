import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/user_model/avatar_update_request_model.dart';
import 'package:sagara_coding_card_application/domain/entities/auth_entity/user_entity/avatar_update_response_entity.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/change_avatar_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/is_avatar_changed_use_case.dart';

part 'avatar_event.dart';
part 'avatar_state.dart';

class AvatarBloc extends Bloc<AvatarEvent, AvatarState> {
  final ChangeAvatarUseCase changeAvatarUseCase;
  AvatarBloc({
    required this.changeAvatarUseCase,
  }) : super(AvatarInitial()) {
    on<AvatarEvent>((event, emit) async {
      print('Received event: $event');
      if (event is ChangeAvatarEvent) {
        try {
          final response = await changeAvatarUseCase.call(request: event.request);
          emit(AvatarChangedState(response: response!));
        } catch (e) {
          print('Error changing avatar: $e');
        }
      }
    });
  }
}
