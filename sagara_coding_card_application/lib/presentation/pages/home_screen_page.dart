import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sagara_coding_card_application/presentation/utils/constant/assets_constant.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_colors.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_fonts.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(8.sp),
          child: SvgPicture.asset(AssetsConstant.logoSagaraCodingCardIcon),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.sp),
            child: SvgPicture.asset(AssetsConstant.settingIcon),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                child: Row(
                  children: [
                    Text(
                      'Welcome, ',
                      style: AppFonts.appFont.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Expanded(
                      child: Divider(color: AppColors.text),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                child: Text.rich(
                  TextSpan(
                    text: 'John Doe',
                    style: AppFonts.appFont.displaySmall!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.primary,
                      height: 0.h,
                    ),
                    children: [
                      TextSpan(
                        text: '!!',
                        style: AppFonts.appFont.displaySmall!.copyWith(
                          fontWeight: FontWeight.w700,
                          height: 0.h,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 200.h,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Image.asset(AssetsConstant.scanPlayCard);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 12.w,
                    );
                  },
                  itemCount: 3,
                ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Collection'.toUpperCase(),
                      style: AppFonts.appFont.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Discover and collect a treasure trove of digital cards as you progress through your coding adventures.',
                      style: AppFonts.appFont.titleSmall!.copyWith(
                        color: AppColors.placeholder,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200.h,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Image.asset(AssetsConstant.myCollectionCard);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 12.w,
                    );
                  },
                  itemCount: 3,
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
