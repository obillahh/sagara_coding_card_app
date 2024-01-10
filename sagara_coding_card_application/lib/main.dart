import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sagara_coding_card_application/data/data_sources/remote/auth_remote_data_source.dart';
import 'package:sagara_coding_card_application/data/repositories/auth_impl_repository.dart';
import 'package:sagara_coding_card_application/domain/use_cases/auth_use_case/login_use_case.dart';
import 'package:sagara_coding_card_application/domain/use_cases/card_use_case/get_list_card_use_case.dart';
import 'package:sagara_coding_card_application/presentation/manager/card_manage/get_card_list/bloc/card_list_bloc.dart';

import 'data/data_sources/remote/card_remote_data_source.dart';
import 'data/repositories/card_impl_repository.dart';
import 'presentation/core/app_router.dart';
import 'presentation/manager/auth_manage/bloc/auth_bloc.dart';

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
                remoteDataSource: CardRemoteDataSource(
                  client: Dio(),
                ),
              ),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => AuthBloc(
            loginUseCase: LoginUseCase(
              authRepository: AuthImplRepository(
                authRemoteDataSource: AuthRemoteDataSource(
                  client: Dio(),
                ),
              ),
            ),
          ),
        ),
      ],
      child: ScreenUtilInit(
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme:
                ColorScheme.fromSeed(seedColor: const Color(0xffC5233A)),
            textTheme: GoogleFonts.barlowTextTheme(),
            useMaterial3: true,
          ),
          routerConfig: router,
        ),
      ),
    );
  }
}
