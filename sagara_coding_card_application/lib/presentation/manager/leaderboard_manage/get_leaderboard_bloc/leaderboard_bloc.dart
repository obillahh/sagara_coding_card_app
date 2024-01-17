import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../domain/entities/leaderboard_entity/leaderboard_response_entity.dart';
import '../../../../domain/use_cases/leaderboard_use_case/get_leaderboard_use_case.dart';

part 'leaderboard_event.dart';
part 'leaderboard_state.dart';

class LeaderboardBloc extends Bloc<LeaderboardEvent, LeaderboardState> {
  final GetLeaderboardUseCase getLeaderboardUseCase;
  LeaderboardBloc({required this.getLeaderboardUseCase})
      : super(LeaderboardInitial()) {
    on<LeaderboardEvent>(
      (event, emit) async {
        if (event is GetLeaderboardEvent) {
          emit(LeaderboardLoadingState());
          final List<LeaderboardDataEntity>? data =
              await getLeaderboardUseCase();
          if (data != null) {
            emit(LeaderboardSuccessState(leaderboard: data));
          } else {
            emit(LeaderboardFailureState(message: 'Something went wrong'));
          }
        }
      },
    );
  }
}
