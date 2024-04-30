import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sagara_coding_card_application/presentation/utils/constant/assets_constant.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_colors.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_fonts.dart';

import '../manager/auth_manage/auth/auth_bloc.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 7)).then((value) {
      context.read<AuthBloc>().add(IsFirstEntryEvent());
      context.read<AuthBloc>().add(IsLoggedInEvent());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) {
        return previous != current;
      },
      listener: (context, state) {
        if (state is AuthFirstEntry) {
          context.go('/onboarding');
        } else if (state is AuthAuthenticated) {
          context.go('/home');
        } else if (state is AuthNotAuthenticated) {
          context.go('/login');
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Container(
          alignment: Alignment.topCenter,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AssetsConstant.bgSplashScreen,
              ),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  AssetsConstant.logoSagaraCodingCard,
                  width: 240.w,
                ),
                SizedBox(height: 320.h),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      const CircularProgressIndicator(),
                      SizedBox(height: 24.h),
                      Text(
                        '© Sagara Technology 2023. All Rights Reserved',
                        style: AppFonts.appFont.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
