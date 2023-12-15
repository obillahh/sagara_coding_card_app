import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/assets_constant.dart';
import '../../utils/themes/app_colors.dart';
import '../../utils/themes/app_fonts.dart';

class FifthScreenOnboardingWidget extends StatelessWidget {
  final PageController pageController;
  const FifthScreenOnboardingWidget({super.key, required this.pageController});

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
              AssetsConstant.bgOnboardingThirdScreen,
            ),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AssetsConstant.startedOnboarding,
                width: 300.w,
              ),
              SizedBox(height: 160.h),
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
                      'Get Started Now',
                      style: AppFonts.appFont.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Ready to start your coding adventure? Let\'s play and learn together!',
                      textAlign: TextAlign.center,
                      style: AppFonts.appFont.titleSmall,
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                minimumSize: Size(280.w, 36.h),
              ),
              child: Text(
                'Get Started',
                style: AppFonts.appFont.titleMedium!.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
