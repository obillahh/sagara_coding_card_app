import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sagara_coding_card_application/data/data_sources/remote/auth_remote_data_source.dart';
import 'package:sagara_coding_card_application/data/data_sources/remote/leaderboard_remote_data_source.dart';
import 'package:sagara_coding_card_application/data/data_sources/remote/quiz_remote_data_source.dart';
import 'package:sagara_coding_card_application/data/repositories/auth_impl_repository.dart';
import 'package:sagara_coding_card_application/data/repositories/profile_impl_repository.dart';
import 'package:sagara_coding_card_application/data/repositories/quiz_impl_repository.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/change_avatar_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/get_current_user_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/increase_collection_card_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/is_avatar_changed_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/is_first_entry_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/is_logged_in_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/login_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/card_use_case/get_list_card_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/profile_use_case/restore_avatar_profile_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/profile_use_case/set_avatar_profile_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/quiz_use_case/get_quiz_use_case.dart';
import 'package:sagara_coding_card_application/presentation/manager/auth_manage/bloc/avatar_bloc.dart';
import 'package:sagara_coding_card_application/presentation/manager/card_manage/get_card_id/bloc/card_id_bloc.dart';
import 'package:sagara_coding_card_application/presentation/manager/card_manage/get_card_list/bloc/card_list_bloc.dart';
import 'package:sagara_coding_card_application/presentation/manager/leaderboard_manage/get_leaderboard_bloc/leaderboard_bloc.dart';
import 'package:sagara_coding_card_application/presentation/manager/profile_manage/bloc/profile_bloc.dart';
import 'package:sagara_coding_card_application/presentation/manager/quiz_manage/bloc/quiz_bloc.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_colors.dart';

import 'data/data_sources/local/auth_local_data_source.dart';
import 'data/data_sources/remote/card_remote_data_source.dart';
import 'data/repositories/card_impl_repository.dart';
import 'data/repositories/leaderboard_impl_repository.dart';
import 'domain/use_cases/auth_use_case/logout_use_case.dart';
import 'domain/use_cases/auth_use_case/register_use_case.dart';
import 'domain/use_cases/card_use_case/get_card_by_id_use_case.dart';
import 'domain/use_cases/card_use_case/get_card_by_scanner_use_case.dart';
import 'domain/use_cases/leaderboard_use_case/get_leaderboard_use_case.dart';
import 'presentation/core/app_router.dart';
import 'presentation/manager/auth_manage/auth/auth_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Dio dio = Dio();

  @override
  void initState() {
    initDio();
    super.initState();
  }

  void initDio() {
    dio.interceptors.clear();
    dio.interceptors.add(
        LogInterceptor(responseBody: true, requestBody: true, requestHeader: true, error: true));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CardListBloc(
            getListCardsUseCase: GetListCardsUseCase(
              cardRepository: CardImplRepository(
                remoteDataSource: CardRemoteDataSource(client: dio),
              ),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => CardIdBloc(
            getCardByIdUseCase: GetCardByIdUseCase(
              cardRepository: CardImplRepository(
                remoteDataSource: CardRemoteDataSource(client: dio),
              ),
            ),
            getCardByScannerUseCase: GetCardByScannerUseCase(
              cardRepository: CardImplRepository(
                remoteDataSource: CardRemoteDataSource(client: dio),
              ),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => AuthBloc(
            loginUseCase: LoginUseCase(
              authRepository: AuthImplRepository(
                authRemoteDataSource: AuthRemoteDataSource(client: dio),
                authLocalDataSource: AuthLocalDataSource(),
              ),
            ),
            registerUseCase: RegisterUseCase(
              authRepository: AuthImplRepository(
                authRemoteDataSource: AuthRemoteDataSource(client: dio),
                authLocalDataSource: AuthLocalDataSource(),
              ),
            ),
            isLoggedInUseCase: IsLoggedInUseCase(
              authRepository: AuthImplRepository(
                authRemoteDataSource: AuthRemoteDataSource(client: dio),
                authLocalDataSource: AuthLocalDataSource(),
              ),
            ),
            getCurrentUserUseCase: GetCurrentUserUseCase(
              authRepository: AuthImplRepository(
                authRemoteDataSource: AuthRemoteDataSource(client: dio),
                authLocalDataSource: AuthLocalDataSource(),
              ),
            ),
            logoutUseCase: LogoutUseCase(
              authRepository: AuthImplRepository(
                authRemoteDataSource: AuthRemoteDataSource(client: dio),
                authLocalDataSource: AuthLocalDataSource(),
              ),
            ),
            isFirstEntryUseCase: IsFirstEntryUseCase(
              authRepository: AuthImplRepository(
                authRemoteDataSource: AuthRemoteDataSource(client: dio),
                authLocalDataSource: AuthLocalDataSource(),
              ),
            ),
            increaseCollectionCardUseCase: IncreaseCollectionCardUseCase(
              authRepository: AuthImplRepository(
                authRemoteDataSource: AuthRemoteDataSource(client: dio),
                authLocalDataSource: AuthLocalDataSource(),
              ),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => LeaderboardBloc(
            getLeaderboardUseCase: GetLeaderboardUseCase(
              leaderboardRepository: LeaderboardImplRepository(
                remoteDataSource: LeaderboardRemoteDataSource(client: dio),
              ),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => QuizBloc(
            getQuizUseCase: GetQuizUseCase(
              quizRepository: QuizImplRepository(
                remoteDataSource: QuizRemoteDataSource(client: dio),
              ),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => ProfileBloc(
            setAvatarProfileUseCase: SetAvatarProfileUseCase(
              profileRepository: ProfileImplRepository(
                authLocalDataSource: AuthLocalDataSource(),
              ),
            ),
            restoreAvatarProfileUseCase: RestoreAvatarProfileUseCase(
              profileRepository: ProfileImplRepository(
                authLocalDataSource: AuthLocalDataSource(),
              ),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => AvatarBloc(
            changeAvatarUseCase: ChangeAvatarUseCase(
              authRepository: AuthImplRepository(
                authRemoteDataSource: AuthRemoteDataSource(client: dio),
                authLocalDataSource: AuthLocalDataSource(),
              ),
            ),
            isAvatarChangedUseCase: IsAvatarChangedUseCase(
              authRepository: AuthImplRepository(
                authRemoteDataSource: AuthRemoteDataSource(client: dio),
                authLocalDataSource: AuthLocalDataSource(),
              ),
            ),
          ),
        )
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 775),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              bottomSheetTheme: const BottomSheetThemeData(
                surfaceTintColor: AppColors.text,
              ),
              colorScheme: ColorScheme.fromSeed(
                seedColor: const Color(0xffC5233A),
              ),
              textTheme: GoogleFonts.barlowTextTheme(),
              useMaterial3: true,
            ),
            routerConfig: router,
          );
        },
      ),
    );
  }
}
