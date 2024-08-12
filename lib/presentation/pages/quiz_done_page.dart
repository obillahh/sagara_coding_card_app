import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/user_model/score_update_request_model.dart';
import 'package:sagara_coding_card_application/presentation/manager/auth_manage/auth/auth_bloc.dart';
import 'package:sagara_coding_card_application/presentation/manager/card_manage/bloc/card_bloc.dart';

class QuizDonePage extends StatelessWidget {
  const QuizDonePage({
    super.key,
    required this.timeRemaining,
    required this.totalPoints,
    required this.totalQuestion,
  });

  final String timeRemaining;
  final String totalPoints;
  final String totalQuestion;

  @override
  Widget build(BuildContext context) {
    double scorePercentage = (int.parse(totalPoints) / (int.parse(totalQuestion) * 20)) * 100;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You’ve Complete\nyour quiz!",
              style: TextStyle(
                color: const Color(0xffC5233A),
                fontSize: 28.sp,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24.h),
            SvgPicture.asset(
              "assets/icons/quiz_done.svg",
              height: 240.h,
            ),
            SizedBox(height: 32.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/card_collection_icon.svg",
                    height: 32.h,
                  ),
                  SizedBox(width: 12.w),
                  BlocBuilder<CardBloc, CardState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        success: (cardList, card, userData, checkCard) {
                          return Text(
                            card!.attributes.role,
                            style: TextStyle(
                              color: const Color(0xffC5233A),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          );
                        },
                        orElse: () => const Text(""),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InfoCard(
                    title: "Points",
                    iconPath: "assets/icons/point.svg",
                    content: "+$totalPoints",
                  ),
                  InfoCard(
                    title: "Time",
                    iconPath: "assets/icons/time.svg",
                    content: timeRemaining,
                  ),
                  InfoCard(
                    title: "Score",
                    iconPath: "assets/icons/score.svg",
                    content: "${scorePercentage.toStringAsFixed(0)}%",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: BlocListener<AuthBloc, AuthState>(
                listener: (context, state) {
                  if (state is ScoresUpdated || state is CollectionSynced) {
                    context.go('/home');
                  } else if (state is AuthErrorState) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(state.error),
                    ));
                  }
                },
                child: ElevatedButton(
                  onPressed: () {
                    final authBloc = context.read<AuthBloc>();
                    authBloc.add(GetStoredUserIdEvent());

                    authBloc.stream.listen((state) {
                      if (state is UserIdStoredState) {
                        final userId = state.userId;
                        authBloc.add(
                          UpdateScoresEvent(
                            req: ScoreUpdateRequestModel(scores: int.parse(totalPoints)),
                            id: userId,
                          ),
                        );
                        authBloc.add(SyncCollectionEvent(id: userId));
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0.r),
                    ),
                    minimumSize: Size(double.infinity.w, 40.h),
                    backgroundColor: const Color(0xffC5233A),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.title,
    required this.iconPath,
    required this.content,
  });

  final String title;
  final String iconPath;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 75.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12.r),
        ),
        border: Border.all(
          color: const Color(0xffC5233A),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 20.h,
            decoration: BoxDecoration(
              color: const Color(0xff1A1A1A),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(12.r),
              ),
            ),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  iconPath,
                  height: 20.h,
                ),
                SizedBox(width: 4.w),
                Text(
                  content,
                  style: TextStyle(
                    color: const Color(0xff333333),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
