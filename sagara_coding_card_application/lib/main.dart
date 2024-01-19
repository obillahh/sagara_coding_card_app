import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sagara_coding_card_application/data/data_sources/remote/auth_remote_data_source.dart';
import 'package:sagara_coding_card_application/data/data_sources/remote/leaderboard_remote_data_source.dart';
import 'package:sagara_coding_card_application/data/repositories/auth_impl_repository.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/get_current_user_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/is_logged_in_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/login_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/card_use_case/get_list_card_use_case.dart';
import 'package:sagara_coding_card_application/presentation/manager/card_manage/get_card_id/bloc/card_id_bloc.dart';
import 'package:sagara_coding_card_application/presentation/manager/card_manage/get_card_list/bloc/card_list_bloc.dart';
import 'package:sagara_coding_card_application/presentation/manager/card_manage/get_card_scanner/card_scanner_bloc.dart';
import 'package:sagara_coding_card_application/presentation/manager/leaderboard_manage/get_leaderboard_bloc/leaderboard_bloc.dart';

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
import 'presentation/manager/auth_manage/login/auth_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CardListBloc(
            getListCardsUseCase: GetListCardsUseCase(
              cardRepository: CardImplRepository(
                remoteDataSource: CardRemoteDataSource(client: Dio()),
              ),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => CardIdBloc(
            getCardByIdUseCase: GetCardByIdUseCase(
              cardRepository: CardImplRepository(
                remoteDataSource: CardRemoteDataSource(client: Dio()),
              ),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => CardScannerBloc(
            getCardByScannerUseCase: GetCardByScannerUseCase(
              cardRepository: CardImplRepository(
                remoteDataSource: CardRemoteDataSource(client: Dio()),
              ),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => AuthBloc(
            loginUseCase: LoginUseCase(
              authRepository: AuthImplRepository(
                authRemoteDataSource: AuthRemoteDataSource(client: Dio()),
                authLocalDataSource: AuthLocalDataSource(),
              ),
            ),
            registerUseCase: RegisterUseCase(
              authRepository: AuthImplRepository(
                authRemoteDataSource: AuthRemoteDataSource(client: Dio()),
                authLocalDataSource: AuthLocalDataSource(),
              ),
            ),
            isLoggedInUseCase: IsLoggedInUseCase(
              authRepository: AuthImplRepository(
                authRemoteDataSource: AuthRemoteDataSource(client: Dio()),
                authLocalDataSource: AuthLocalDataSource(),
              ),
            ),
            getCurrentUserUseCase: GetCurrentUserUseCase(
                authRepository: AuthImplRepository(
              authRemoteDataSource: AuthRemoteDataSource(client: Dio()),
              authLocalDataSource: AuthLocalDataSource(),
            )),
            logoutUseCase: LogoutUseCase(
              authRepository: AuthImplRepository(
                authRemoteDataSource: AuthRemoteDataSource(client: Dio()),
                authLocalDataSource: AuthLocalDataSource(),
              ),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => LeaderboardBloc(
            getLeaderboardUseCase: GetLeaderboardUseCase(
              leaderboardRepository: LeaderboardImplRepository(
                remoteDataSource: LeaderboardRemoteDataSource(client: Dio()),
              ),
            ),
          ),
        )
      ],
      child: ScreenUtilInit(
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xffC5233A),
            ),
            textTheme: GoogleFonts.barlowTextTheme(),
            useMaterial3: true,
          ),
          routerConfig: router,
        ),
      ),
    );
  }
}
