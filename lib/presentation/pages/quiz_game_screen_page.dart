import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sagara_coding_card_application/presentation/manager/quiz_manage/bloc/quiz_bloc.dart';
import 'package:sagara_coding_card_application/presentation/utils/constant/assets_constant.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_colors.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_fonts.dart';
import 'package:sagara_coding_card_application/presentation/widgets/option_widget.dart';

class QuizGameScreenPage extends StatefulWidget {
  const QuizGameScreenPage({super.key});

  @override
  State<QuizGameScreenPage> createState() => _QuizGameScreenPageState();
}

class _QuizGameScreenPageState extends State<QuizGameScreenPage> {
  @override
  void initState() {
    super.initState();
    context.read<QuizBloc>().add(GetQuizEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.background,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_circle_left,
              size: 40.sp,
              color: AppColors.text,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.help_outline_sharp,
                size: 30,
                color: AppColors.text,
              ),
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity.w,
        height: double.infinity.h,
        child: Align(
          alignment: Alignment.topCenter,
          child: Image.asset(
            AssetsConstant.character,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
      bottomSheet: BottomSheet(
        onClosing: () {
          context.pop();
        },
        backgroundColor: const Color(0xff333030),
        builder: (context) {
          return SizedBox(
            height: 380.h,
            child: Padding(
              padding: EdgeInsets.all(24.w),
              child: BlocBuilder<QuizBloc, QuizState>(
                builder: (context, state) {
                  if (state is QuizSuccessState) {
                    return SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20.w,
                                    height: 20.h,
                                    child: CircularProgressIndicator(
                                      value: 80 / 100,
                                      strokeWidth: 4.w,
                                      color: AppColors.text,
                                    ),
                                  ),
                                  SizedBox(width: 12.w),
                                  Text(
                                    '28s',
                                    style:
                                        AppFonts.appFont.titleLarge!.copyWith(
                                      fontWeight: FontWeight.w800,
                                      color: AppColors.text,
                                    ),
                                  ),
                                ],
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
                                  'Back End Engineer'.toUpperCase(),
                                  style: AppFonts.appFont.titleSmall!.copyWith(
                                    fontWeight: FontWeight.w800,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.w,
                              vertical: 4.h,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.background,
                            ),
                            child: const Text(
                              '01 of 05 Questions',
                              style: TextStyle(
                                color: AppColors.text,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            state.quizList[0].attributes.quizQuestion,
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.text,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          OptionWidget(
                            option: 'A)',
                            optionValue: state.quizList[0].attributes.optionOne,
                            // isCorrect:
                            //     state.quizList[0].attributes.correctOption ==
                            //         optionValue,
                            // onOptionSelected: (isCorrect) {
                            //   setState(() {
                            //     if (isCorrect) {
                            //       correctOption = optionValue;
                            //     } else {
                            //       correctOption = "";
                            //     }
                            //   });
                          ),
                          SizedBox(height: 12.h),
                          OptionWidget(
                            option: 'B)',
                            optionValue: state.quizList[0].attributes.optionTwo,
                          ),
                          SizedBox(height: 12.h),
                          OptionWidget(
                            option: 'C)',
                            optionValue:
                                state.quizList[0].attributes.optionThree,
                          ),
                          SizedBox(height: 12.h),
                          OptionWidget(
                            option: 'D)',
                            optionValue:
                                state.quizList[0].attributes.optionFour,
                          ),
                        ],
                      ),
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
