import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import 'package:sagara_coding_card_application/presentation/utils/constant/assets_constant.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_fonts.dart';

import '../manager/auth_manage/auth/auth_bloc.dart';
import '../utils/themes/app_colors.dart';

class ProfileScreenPage extends StatefulWidget {
  const ProfileScreenPage({super.key});

  @override
  State<ProfileScreenPage> createState() => _ProfileScreenPageState();
}

class _ProfileScreenPageState extends State<ProfileScreenPage> {
  @override
  void initState() {
    super.initState();
    context.read<AuthBloc>().add(GetStoredUserIdEvent());
    context.read<AuthBloc>().stream.listen((state) {
      if (state is UserIdStoredState) {
        context.read<AuthBloc>().add(GetUserByIdEvent(id: state.userId));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
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
                SizedBox(height: 16.h),
                _buildProfileCard(context),
                SizedBox(height: 16.h),
                _buildOptionsList(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileCard(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.primary,
        ),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  if (state is GetUserByIdSuccessState) {
                    return CircleAvatar(
                      radius: 32.r,
                      backgroundImage: NetworkImage(state.user.avatar.url),
                    );
                  }
                  return CircleAvatar(
                    backgroundImage: const AssetImage(
                      AssetsConstant.profilePicture,
                    ),
                    radius: 32.r,
                  );
                },
              ),
              SizedBox(width: 12.w),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  if (state is GetUserByIdSuccessState) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          state.user.username,
                          style: AppFonts.appFont.titleLarge!.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          state.user.email,
                          style: AppFonts.appFont.titleSmall!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.placeholder,
                          ),
                        ),
                      ],
                    );
                  }
                  return SizedBox(height: 60.h);
                },
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Text(
            'Statistic',
            style: AppFonts.appFont.titleMedium!.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 6.h),
          _buildStatistics(context),
        ],
      ),
    );
  }

  Widget _buildStatistics(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildStatisticCard(
          context,
          icon: AssetsConstant.cardCollectionIcon,
          title: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state is GetUserByIdSuccessState) {
                return Text(
                  state.user.collectionCard.toString(),
                  style: AppFonts.appFont.titleLarge!.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                );
              }
              return Container();
            },
          ),
          subtitle: 'Card Collection'.toUpperCase(),
          onTap: () => context.go('/collection'),
        ),
        _buildStatisticCard(
          context,
          icon: AssetsConstant.cardCollectionIcon,
          title: Text(
            'TOP 10%',
            style: AppFonts.appFont.titleLarge!.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          subtitle: 'Rank'.toUpperCase(),
          onTap: () => context.go('/leaderboard'),
        ),
      ],
    );
  }

  Widget _buildStatisticCard(
    BuildContext context, {
    required String icon,
    required Widget title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Container(
      padding: EdgeInsets.all(8.sp),
      width: 145.w,
      height: 80.h,
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
                icon,
                width: 24.w,
              ),
              SizedBox(width: 8.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  title,
                  Text(
                    subtitle,
                    style: AppFonts.appFont.labelSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.background,
                    ),
                  )
                ],
              )
            ],
          ),
          GestureDetector(
            onTap: onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'View Details',
                  style: AppFonts.appFont.labelSmall!.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SvgPicture.asset(
                  AssetsConstant.doubleArrowIcon,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOptionsList(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        _buildOptionItem(
          icon: Icons.notifications,
          title: 'Notification',
          subtitle: 'Enable you to receive update and other important events information.',
          onTap: () {},
        ),
        SizedBox(height: 16.h),
        _buildSectionTitle('Feedback & Bug'),
        _buildOptionItem(
          icon: Icons.bug_report,
          title: 'Feedback & Bug Report',
          subtitle: 'Share your thoughts and report issues to help us improve the app.',
          onTap: () {},
        ),
        SizedBox(height: 16.h),
        _buildSectionTitle('About'),
        _buildOptionItem(
          icon: Icons.info_rounded,
          title: 'About Us',
          subtitle: 'Learn more about us and our app\'s story.',
          onTap: () {},
        ),
        SizedBox(height: 16.h),
        _buildSectionTitle('Account'),
        BlocListener<AuthBloc, AuthState>(
          listenWhen: (previous, current) => previous != current,
          listener: (context, state) {
            if (state is AuthLogoutSuccess) {
              context.read<AuthBloc>().add(IsLoggedInEvent());
              context.go('/login');
            }
          },
          child: _buildOptionItem(
            icon: Icons.logout,
            title: 'Log Out',
            subtitle: 'Enable you to receive update and other important events information.',
            onTap: () {
              context.read<AuthBloc>().add(LogoutEvent());
            },
          ),
        ),
      ],
    );
  }

  Widget _buildOptionItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: AppColors.primary,
        size: 24.sp,
      ),
      title: Text(
        title,
        style: AppFonts.appFont.bodySmall!.copyWith(
          fontWeight: FontWeight.w700,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: AppFonts.appFont.labelSmall!.copyWith(
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: AppColors.primary,
        size: 16.sp,
      ),
      onTap: onTap,
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: AppFonts.appFont.labelLarge!.copyWith(
        fontWeight: FontWeight.w700,
        color: AppColors.primary,
      ),
    );
  }
}
