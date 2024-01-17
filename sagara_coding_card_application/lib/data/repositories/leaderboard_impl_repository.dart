import 'package:sagara_coding_card_application/data/data_sources/remote/leaderboard_remote_data_source.dart';
import 'package:sagara_coding_card_application/data/models/leaderboard_model/leaderboard_response_model.dart';
import 'package:sagara_coding_card_application/domain/entities/leaderboard_entity/leaderboard_response_entity.dart';

import '../../domain/repositories/leaderboard_repository.dart';

class LeaderboardImplRepository extends LeaderboardRepository {
  final LeaderboardRemoteDataSource remoteDataSource;

  LeaderboardImplRepository({required this.remoteDataSource});

  @override
  Future<List<LeaderboardDataEntity>?> getLeaderboard() async {
    final response = await remoteDataSource.getLeaderboard();
    if (response.data == null) {
      return null;
    }
    final data = LeaderboardResponseEntity(
      status: response.status ?? 0,
      message: response.message ?? '',
      data: List<LeaderboardDataModel>.from(response.data ?? [])
          .map(
            (e) => LeaderboardDataEntity(
              id: e.id ?? 0,
              username: e.username ?? '',
              collectionCard: e.collectionCard ?? 0,
              avatar: AvatarDataEntity(
                id: e.avatar?.id ?? 0,
                name: e.avatar?.name ?? '',
                alternativeText: e.avatar?.alternativeText ?? '',
                caption: e.avatar?.caption ?? '',
                width: e.avatar?.width ?? 0,
                height: e.avatar?.height ?? 0,
                formats: AvatarDataFormatsEntity(
                  thumbnail: AvatarFormatDataEntity(
                    name: e.avatar?.formats?.thumbnail?.name ?? '',
                    hash: e.avatar?.formats?.thumbnail?.hash ?? '',
                    ext: e.avatar?.formats?.thumbnail?.ext ?? '',
                    mime: e.avatar?.formats?.thumbnail?.mime ?? '',
                    path: e.avatar?.formats?.thumbnail?.path ?? '',
                    width: e.avatar?.formats?.thumbnail?.width ?? 0,
                    height: e.avatar?.formats?.thumbnail?.height ?? 0,
                    size: e.avatar?.formats?.thumbnail?.size ?? 0,
                    url: e.avatar?.formats?.thumbnail?.url ?? '',
                  ),
                  small: AvatarFormatDataEntity(
                    name: e.avatar?.formats?.thumbnail?.name ?? '',
                    hash: e.avatar?.formats?.thumbnail?.hash ?? '',
                    ext: e.avatar?.formats?.thumbnail?.ext ?? '',
                    mime: e.avatar?.formats?.thumbnail?.mime ?? '',
                    path: e.avatar?.formats?.thumbnail?.path ?? '',
                    width: e.avatar?.formats?.thumbnail?.width ?? 0,
                    height: e.avatar?.formats?.thumbnail?.height ?? 0,
                    size: e.avatar?.formats?.thumbnail?.size ?? 0,
                    url: e.avatar?.formats?.thumbnail?.url ?? '',
                  ),
                ),
                hash: e.avatar?.hash ?? '',
                ext: e.avatar?.ext ?? '',
                mime: e.avatar?.mime ?? '',
                size: e.avatar?.size ?? 0,
                url: e.avatar?.url ?? '',
                previewUrl: e.avatar?.previewUrl ?? '',
                provider: e.avatar?.provider ?? '',
                providerMetadata: e.avatar?.providerMetadata ?? '',
                folderPath: e.avatar?.folderPath ?? '',
                createdAt: e.avatar?.createdAt ?? DateTime.now(),
                updatedAt: e.avatar?.updatedAt ?? DateTime.now(),
              ),
            ),
          )
          .toList(),
    );
    return data.data;
  }
}
