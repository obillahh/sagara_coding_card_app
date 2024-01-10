import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/constant/assets_constant.dart';
import '../../utils/themes/app_colors.dart';
import '../../utils/themes/app_fonts.dart';

class ThirdScreenOnboardingWidget extends StatelessWidget {
  final PageController pageController;
  const ThirdScreenOnboardingWidget({super.key, required this.pageController});

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
              AssetsConstant.bgOnboardingSecondScreen,
            ),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AssetsConstant.connectOnboarding,
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
                      'Connect with the Community',
                      style: AppFonts.appFont.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Join a vibrant community of learners, share your projects, and seek guidance from fellow coding enthusiasts.',
                      textAlign: TextAlign.center,
                      style: AppFonts.appFont.titleSmall,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    pageController.previousPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 16.sp,
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        'Prev',
                        style: AppFonts.appFont.titleLarge!.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
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
