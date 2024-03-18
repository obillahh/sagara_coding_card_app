import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sagara_coding_card_application/presentation/utils/constant/assets_constant.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_fonts.dart';
import 'package:shimmer/shimmer.dart';

import '../manager/auth_manage/login/auth_bloc.dart';
import '../utils/themes/app_colors.dart';

class ProfileScreenPage extends StatefulWidget {
  const ProfileScreenPage({super.key});

  @override
  State<ProfileScreenPage> createState() => _ProfileScreenPageState();
}

class _ProfileScreenPageState extends State<ProfileScreenPage> {
  @override
  initState() {
    super.initState();
    context.read<AuthBloc>().add(GetCurrentUserEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Profile',
                style: AppFonts.appFont.headlineSmall!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary,
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.primary,
                  ),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) {
                        if (state is CurrentUserState) {
                          return Row(
                            children: [
                              Image.asset(AssetsConstant.profilePicture,
                                  width: 64.w),
                              SizedBox(width: 12.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    state.currentUser!.username,
                                    style:
                                        AppFonts.appFont.titleLarge!.copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    state.currentUser!.email,
                                    style:
                                        AppFonts.appFont.titleSmall!.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.placeholder,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        }
                        return SizedBox(height: 60.h);
                      },
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      'Statistic',
                      style: AppFonts.appFont.titleMedium!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.sp),
                          width: 144.w,
                          height: 70.h,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    AssetsConstant.cardCollectionIcon,
                                    width: 24.w,
                                  ),
                                  SizedBox(width: 8.w),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      BlocBuilder<AuthBloc, AuthState>(
                                        builder: (context, state) {
                                          if (state is CurrentUserState) {
                                            return Text(
                                              state.currentUser!.collectionCard
                                                  .toString(),
                                              style: AppFonts
                                                  .appFont.titleLarge!
                                                  .copyWith(
                                                fontWeight: FontWeight.w700,
                                              ),
                                            );
                                          } else {
                                            return Shimmer.fromColors(
                                              baseColor: Colors.grey.shade200,
                                              highlightColor:
                                                  Colors.grey.shade300,
                                              child: Container(
                                                height: 16.h,
                                                width: 32.w,
                                                color: AppColors.primary,
                                              ),
                                            );
                                          }
                                        },
                                      ),
                                      Text(
                                        'Card Collection'.toUpperCase(),
                                        style: AppFonts.appFont.labelSmall!
                                            .copyWith(
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.background,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'View Collection',
                                    style:
                                        AppFonts.appFont.labelSmall!.copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    AssetsConstant.doubleArrowIcon,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.sp),
                          width: 144.w,
                          height: 70.h,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    AssetsConstant.cardCollectionIcon,
                                    width: 24.w,
                                  ),
                                  SizedBox(width: 8.w),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'TOP 10%',
                                        style: AppFonts.appFont.titleLarge!
                                            .copyWith(
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        'Rank'.toUpperCase(),
                                        style: AppFonts.appFont.labelSmall!
                                            .copyWith(
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.background,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'View Leaderboard',
                                    style:
                                        AppFonts.appFont.labelSmall!.copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    AssetsConstant.doubleArrowIcon,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.notifications,
                      color: AppColors.primary,
                      size: 24.sp,
                    ),
                    title: Text(
                      'Notification',
                      style: AppFonts.appFont.bodySmall!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: Text(
                      'Enable you to receive update and other important events information.',
                      style: AppFonts.appFont.labelSmall!.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.primary,
                      size: 16.sp,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'Feedback & Bug',
                    style: AppFonts.appFont.labelLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.primary,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.bug_report,
                      color: AppColors.primary,
                      size: 24.sp,
                    ),
                    title: Text(
                      'Feedback & Bug Report',
                      style: AppFonts.appFont.bodySmall!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: Text(
                      'Share your thoughts and report issues to help us improve the app.',
                      style: AppFonts.appFont.labelSmall!.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.primary,
                      size: 16.sp,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'About',
                    style: AppFonts.appFont.labelLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.primary,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.info_rounded,
                      color: AppColors.primary,
                      size: 24.sp,
                    ),
                    title: Text(
                      'About Us',
                      style: AppFonts.appFont.bodySmall!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: Text(
                      'Learn more about us and our app\'s story.',
                      style: AppFonts.appFont.labelSmall!.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.primary,
                      size: 16.sp,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'Account',
                    style: AppFonts.appFont.labelLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.primary,
                    ),
                  ),
                  BlocListener<AuthBloc, AuthState>(
                    listenWhen: (previous, current) {
                      return previous != current;
                    },
                    listener: (context, state) {
                      if (state is AuthLogoutSuccess) {
                        context.read<AuthBloc>().add(IsLoggedInEvent());
                        context.go('/login');
                      }
                    },
                    child: GestureDetector(
                      onTap: () {
                        context.read<AuthBloc>().add(LogoutEvent());
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.logout,
                          color: AppColors.primary,
                          size: 24.sp,
                        ),
                        title: Text(
                          'Log Out',
                          style: AppFonts.appFont.bodySmall!.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: Text(
                          'Enable you to receive update and other important events information.',
                          style: AppFonts.appFont.labelSmall!.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.primary,
                          size: 16.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
