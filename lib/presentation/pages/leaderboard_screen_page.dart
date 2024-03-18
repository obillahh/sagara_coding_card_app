import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sagara_coding_card_application/presentation/manager/leaderboard_manage/get_leaderboard_bloc/leaderboard_bloc.dart';
import 'package:sagara_coding_card_application/presentation/utils/constant/assets_constant.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_fonts.dart';
import 'package:shimmer/shimmer.dart';

import '../utils/themes/app_colors.dart';

class LeaderboardScreenPage extends StatefulWidget {
  const LeaderboardScreenPage({super.key});

  @override
  State<LeaderboardScreenPage> createState() => _LeaderboardScreenPageState();
}

class _LeaderboardScreenPageState extends State<LeaderboardScreenPage> {
  @override
  void initState() {
    super.initState();
    context.read<LeaderboardBloc>().add(GetLeaderboardEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Leaderboard'.toUpperCase(),
                          style: AppFonts.appFont.displaySmall!.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.primary,
                            height: 0.h,
                          ),
                        ),
                        const Expanded(
                          child: Divider(
                            thickness: 2,
                            color: AppColors.text,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(8.sp),
                      width: double.infinity,
                      height: 56.h,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  AssetsConstant.cardCollectionIcon,
                                  width: 28.w,
                                ),
                                SizedBox(width: 8.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '102',
                                      style:
                                          AppFonts.appFont.titleLarge!.copyWith(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'Card Collection'.toUpperCase(),
                                      style:
                                          AppFonts.appFont.labelSmall!.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.background,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          const VerticalDivider(
                            color: AppColors.background,
                            thickness: 2,
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  AssetsConstant.rankIcon,
                                  width: 28.w,
                                ),
                                SizedBox(width: 8.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'TOP 10%',
                                      style:
                                          AppFonts.appFont.titleLarge!.copyWith(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'Rank'.toUpperCase(),
                                      style:
                                          AppFonts.appFont.labelSmall!.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.background,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.h),
              const Divider(color: AppColors.placeholder),
              BlocBuilder<LeaderboardBloc, LeaderboardState>(
                builder: (context, state) {
                  if (state is LeaderboardSuccessState) {
                    if (state.leaderboard.isEmpty) {
                      return Center(
                        child: Text('Empty'.toUpperCase()),
                      );
                    }
                    return ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(horizontal: 20.sp),
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Text(
                            '${index + 1}',
                            style: AppFonts.appFont.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          title: Row(
                            children: [
                              CircleAvatar(
                                child: Image.asset(
                                  AssetsConstant.profilePicture,
                                  width: 40.w,
                                ),
                              ),
                              SizedBox(width: 12.w),
                              Text(
                                state.leaderboard[index].username,
                                style: AppFonts.appFont.bodyLarge!.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          trailing: Text(
                            '${state.leaderboard[index].collectionCard} Card',
                            style: AppFonts.appFont.bodyMedium,
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 8.h);
                      },
                      itemCount: state.leaderboard.length,
                    );
                  } else {
                    return ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(horizontal: 20.sp),
                      itemBuilder: (context, index) {
                        return Shimmer.fromColors(
                          baseColor: Colors.grey.shade800,
                          highlightColor: Colors.grey.shade700,
                          child: ListTile(
                            leading: Text(
                              '${index + 1}',
                              style: AppFonts.appFont.bodyMedium!.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            title: Row(
                              children: [
                                const CircleAvatar(
                                  backgroundColor: AppColors.primary,
                                ),
                                SizedBox(width: 12.w),
                                Container(
                                  width: 120.w,
                                  height: 12.h,
                                  decoration: const BoxDecoration(
                                    color: AppColors.primary,
                                  ),
                                )
                              ],
                            ),
                            trailing: Container(
                              width: 60.w,
                              height: 12.h,
                              decoration: const BoxDecoration(
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 8.h);
                      },
                      itemCount: 12,
                    );
                  }
                },
              ),
              SizedBox(height: 32.h),
            ],
          ),
        ),
      ),
    );
  }
}
