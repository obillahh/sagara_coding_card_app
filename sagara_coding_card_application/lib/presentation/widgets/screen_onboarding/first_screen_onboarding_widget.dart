import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/assets_constant.dart';
import '../../utils/themes/app_fonts.dart';

class FirstScreenOnboardingWidget extends StatelessWidget {
  final PageController pageController;
  const FirstScreenOnboardingWidget({
    super.key,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
            image: AssetImage(
              AssetsConstant.bgOnboardingFirstScreen,
            ),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AssetsConstant.logoSagaraCodingCard,
                width: 240.w,
              ),
              SizedBox(height: 30.h),
              Image.asset(
                AssetsConstant.welcomeOnboarding,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.all(16.sp),
        height: 200.h,
        decoration: const BoxDecoration(
          color: AppColors.background,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: SmoothPageIndicator(
                count: 5,
                controller: pageController,
                effect: SlideEffect(
                  dotColor: AppColors.text,
                  dotWidth: 8.w,
                  dotHeight: 8.h,
                  activeDotColor: AppColors.primary,
                ),
              ),
            ),
            Column(
              children: [
                Column(
                  children: [
                    Text(
                      'Welcome Players!',
                      style: AppFonts.appFont.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Welcome to Sagara Coding Card, where learning coding is as fun as playing a game!',
                      textAlign: TextAlign.center,
                      style: AppFonts.appFont.titleSmall,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    pageController.nextPage(
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut);
                  },
                  child: Row(
                    children: [
                      Text(
                        'Next',
                        style: AppFonts.appFont.titleLarge!.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16.sp,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
