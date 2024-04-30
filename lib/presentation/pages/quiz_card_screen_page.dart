import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sagara_coding_card_application/presentation/manager/card_manage/get_card_id/bloc/card_id_bloc.dart';
import 'package:sagara_coding_card_application/presentation/utils/constant/assets_constant.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_colors.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_fonts.dart';

class QuizCardScreenPage extends StatelessWidget {
  const QuizCardScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text(
          'Quiz Card',
          style: TextStyle(
            color: AppColors.text,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.background,
      ),
      body: BlocBuilder<CardIdBloc, CardIdState>(
        builder: (context, state) {
          if (state is CardIdSuccessState) {
            return SizedBox(
              width: double.infinity.w,
              height: double.infinity.h,
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.network(
                  state.card.attributes.avatarCard.data.attributes.url,
                  fit: BoxFit.fitWidth,
                  width: double.infinity.w,
                ),
              ),
            );
          }
          return SizedBox(
            width: double.infinity.w,
            height: double.infinity.h,
          );
        },
      ),
      bottomSheet: BottomSheet(
        onClosing: () {
          context.pop();
        },
        backgroundColor: Colors.white,
        builder: (context) {
          return SizedBox(
            height: 300.h,
            child: BlocBuilder<CardIdBloc, CardIdState>(
              builder: (context, state) {
                if (state is CardIdSuccessState) {
                  int totalScore = 0;
                  final quizzes = state.card.attributes.quizzes.data;
                  for (var quiz in quizzes) {
                    totalScore += quiz.attributes.score;
                  }
                  return Padding(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Quiz Card',
                              style: AppFonts.appFont.titleLarge!.copyWith(
                                fontWeight: FontWeight.w800,
                                color: AppColors.primary,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 18,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColors.background,
                              ),
                              child: Text(
                                state.card.attributes.role.toUpperCase(),
                                style: AppFonts.appFont.titleSmall!.copyWith(
                                  fontWeight: FontWeight.w800,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.h),
                        Row(
                          children: [
                            SvgPicture.asset(
                              AssetsConstant.cardCollectionIcon,
                              width: 32.w,
                            ),
                            SizedBox(width: 12.w),
                            Text(
                              state.card.attributes.role.toUpperCase(),
                              style: AppFonts.appFont.titleSmall!.copyWith(
                                fontWeight: FontWeight.w800,
                                fontSize: 20.sp,
                                color: AppColors.primary,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.h),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.w,
                            vertical: 12.h,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            border: Border.all(
                              color: Colors.black12,
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Point',
                                        style: TextStyle(
                                          color: AppColors.primary,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                      Text('Up to+${totalScore.toString()} P'),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const Text('Difficulty'),
                                      Text(
                                        state.card.attributes.level,
                                        style: TextStyle(
                                          color: AppColors.primary,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 16.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total Question',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                  Text(
                                    state.card.attributes.quizzes.data.length.toString(),
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 16.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                context.go('/home');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.text,
                                minimumSize: Size(150.w, 36.h),
                                elevation: 0,
                                side: BorderSide(
                                  color: AppColors.primary,
                                  width: 1.5.w,
                                ),
                              ),
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                context.go('/quiz_loading');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primary,
                                minimumSize: Size(150.w, 36.h),
                                elevation: 0,
                                side: BorderSide(
                                  color: AppColors.primary,
                                  width: 1.5.w,
                                ),
                              ),
                              child: Text(
                                'Start Quiz',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.text,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }
                return const Center(child: CircularProgressIndicator());
              },
            ),
          );
        },
      ),
    );
  }
}
