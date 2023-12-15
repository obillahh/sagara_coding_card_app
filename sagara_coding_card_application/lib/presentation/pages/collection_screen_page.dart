import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sagara_coding_card_application/presentation/utils/router_constant.dart';

import '../utils/assets_constant.dart';
import '../utils/themes/app_colors.dart';
import '../utils/themes/app_fonts.dart';

class CollectionScreenPage extends StatelessWidget {
  const CollectionScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Text(
                      'CARD ',
                      style: AppFonts.appFont.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w700,
                        height: 0.h,
                      ),
                    ),
                    const Expanded(
                      child: Divider(color: AppColors.text),
                    ),
                  ],
                ),
                Text(
                  'COLLECTION',
                  style: AppFonts.appFont.displaySmall!.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.primary,
                    height: 0.h,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.primary,
                        width: 2.w,
                      ),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.primary,
                        width: 2.w,
                      ),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    hintText: 'Search Card',
                    hintStyle: AppFonts.appFont.titleMedium!.copyWith(
                      color: AppColors.placeholder,
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: AppColors.primary,
                    ),
                    suffixIcon: const Icon(
                      Icons.filter_list,
                      color: AppColors.primary,
                    ),
                  ),
                ),
                SizedBox(height: 12.h),
                Row(
                  children: [
                    Text(
                      'CHARACTER ',
                      style: AppFonts.appFont.titleLarge!.copyWith(
                        fontWeight: FontWeight.w700,
                        height: 0.h,
                      ),
                    ),
                    const Expanded(
                      child: Divider(color: AppColors.placeholder),
                    ),
                  ],
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .7,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        context.pushNamed(RouterConstant.detail);
                      },
                      child: Image.asset(
                        AssetsConstant.characterCard,
                      ),
                    );
                  },
                  itemCount: 6,
                ),
                SizedBox(height: 32.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
