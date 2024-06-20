import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sagara_coding_card_application/presentation/manager/card_manage/bloc/card_bloc.dart';
import 'package:sagara_coding_card_application/presentation/utils/constant/assets_constant.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_colors.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_fonts.dart';

class LoadingQuizScreenPage extends StatefulWidget {
  const LoadingQuizScreenPage({super.key});

  @override
  State<LoadingQuizScreenPage> createState() => _LoadingQuizScreenPageState();
}

class _LoadingQuizScreenPageState extends State<LoadingQuizScreenPage> {
  late int _countdownValue;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _countdownValue = 3;
    _startCountdown();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startCountdown() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      setState(() {
        if (_countdownValue <= 0) {
          timer.cancel();
          context.push('/quiz_game');
        } else {
          _countdownValue--;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: BlocBuilder<CardBloc, CardState>(
            builder: (context, state) {
              return state.maybeWhen(
                success: (cardList, card, userData, checkCard) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Ready...',
                            style: TextStyle(
                              fontSize: 28.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary,
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                width: 180.w,
                                height: 180.h,
                                child: CircularProgressIndicator(
                                  strokeWidth: 20.w,
                                  backgroundColor: AppColors.placeholder,
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(AppColors.primary),
                                ),
                              ),
                              Text(
                                _countdownValue.toString(),
                                style: TextStyle(
                                  fontSize: 90.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primary,
                                ),
                              )
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
                                card!.attributes.role,
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
                                        const Text('Up to+11000 P'),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        const Text('Difficulty'),
                                        Text(
                                          card.attributes.level,
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
                                      card.attributes.quizzes.data.length.toString(),
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
                        ],
                      )
                    ],
                  );
                },
                orElse: () => const SizedBox.shrink(),
              );
            },
          ),
        ),
      ),
    );
  }
}
