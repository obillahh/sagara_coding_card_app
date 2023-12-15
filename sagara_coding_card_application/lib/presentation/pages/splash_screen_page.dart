import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sagara_coding_card_application/presentation/utils/assets_constant.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_colors.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_fonts.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 4))
        .then((value) => context.go('/onboarding'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                width: 250.w,
              ),
              SizedBox(height: 320.h),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  '© Sagara Techology 2023. All Rights Reserved',
                  style: AppFonts.appFont.bodySmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
