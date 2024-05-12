import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sagara_coding_card_application/presentation/manager/card_manage/get_card_id/bloc/card_id_bloc.dart';
import 'package:sagara_coding_card_application/presentation/manager/quiz_manage/bloc/quiz_bloc.dart';
import 'package:sagara_coding_card_application/presentation/utils/constant/assets_constant.dart';
import 'package:sagara_coding_card_application/presentation/utils/constant/router_constant.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_colors.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_fonts.dart';
import 'package:sagara_coding_card_application/presentation/widgets/option_widget.dart';

class QuizGameScreenPage extends StatefulWidget {
  const QuizGameScreenPage({super.key});

  @override
  State<QuizGameScreenPage> createState() => _QuizGameScreenPageState();
}

class _QuizGameScreenPageState extends State<QuizGameScreenPage> {
  late List<String?> selectedOptions;
  late PageController _pageController;
  Timer? _timer;
  int _secondsRemaining = 120;
  int _questionIndex = 0;
  int totalPoints = 0;
  late int totalQuestions;

  String _formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    String formattedMinutes = minutes.toString().padLeft(2, '0');
    String formattedSeconds = remainingSeconds.toString().padLeft(2, '0');
    return '$formattedMinutes:$formattedSeconds';
  }

  double _calculateProgress() {
    return (_secondsRemaining / 120);
  }

  @override
  void initState() {
    super.initState();
    context.read<QuizBloc>().add(GetQuizEvent());
    selectedOptions = List<String?>.filled(10, null);
    _pageController = PageController(initialPage: _questionIndex);
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          _timer?.cancel();
          calculateTotalPoints();
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              backgroundColor: AppColors.background,
              title: const Text('Times Up!'),
              titleTextStyle: TextStyle(
                color: AppColors.text,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
              content: const Text('Your time is up!'),
              contentTextStyle: TextStyle(
                color: AppColors.text,
                fontSize: 14.sp,
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    navigateToQuizDonePage();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: AppColors.text,
                  ),
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        }
      });
    });
  }

  void calculateTotalPoints() {
    totalPoints = 0;
    for (int i = 0; i < selectedOptions.length; i++) {
      if (selectedOptions[i] == null) {
        totalPoints += 0;
      }
    }
  }

  void navigateToQuizDonePage() {
    context.goNamed(RouterConstant.quizDone, pathParameters: {
      'timeRemaining': _formatTime(_secondsRemaining),
      'totalPoints': totalPoints.toString(),
      'totalQuestion': totalQuestions.toString(),
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.background,
        leading: Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: IconButton(
            onPressed: () {
              context.go('/home');
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
            padding: EdgeInsets.only(right: 8.w),
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
        backgroundColor: const Color(0xff333030),
        builder: (context) {
          return SizedBox(
            height: 400.h,
            child: BlocBuilder<CardIdBloc, CardIdState>(
              builder: (context, state) {
                if (state is CardIdSuccessState) {
                  final quizzes = state.card.attributes.quizzes;
                  totalQuestions = quizzes.data.length;
                  return SingleChildScrollView(
                    padding: EdgeInsets.all(16.w),
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
                                    value: _calculateProgress(),
                                    strokeWidth: 4.w,
                                    color: AppColors.text,
                                  ),
                                ),
                                SizedBox(width: 12.w),
                                Text(
                                  '${_formatTime(_secondsRemaining)} s',
                                  style: AppFonts.appFont.titleLarge!.copyWith(
                                    fontWeight: FontWeight.w800,
                                    color: AppColors.text,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 18.h,
                                vertical: 4.w,
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
                        SizedBox(height: 24.h),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.w,
                            vertical: 4.h,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            color: AppColors.background,
                          ),
                          child: Text(
                            '${_questionIndex + 1} of ${quizzes.data.length} Questions',
                            style: const TextStyle(
                              color: AppColors.text,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        SizedBox(
                          height: 400.h,
                          child: PageView.builder(
                            itemCount: totalQuestions,
                            controller: _pageController,
                            physics: const NeverScrollableScrollPhysics(),
                            onPageChanged: (index) {
                              setState(() {
                                _questionIndex = index;
                              });
                            },
                            itemBuilder: (context, index) {
                              return buildQuestionWidget(
                                quizzes.data[index],
                                index,
                                quizzes.data[index].attributes.correctOption,
                                state,
                              );
                            },
                          ),
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
          );
        },
      ),
    );
  }

  Widget buildQuestionWidget(
    dynamic quizItem,
    int index,
    String correctOption,
    CardIdSuccessState state,
  ) {
    final quizzes = state.card.attributes.quizzes;
    final scores = state.card.attributes.quizzes.data[index].attributes.score;
    final question = state.card.attributes.quizzes.data.length;
    inspect(question);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          quizItem.attributes.quizQuestion,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.text,
          ),
        ),
        SizedBox(height: 12.h),
        OptionWidget(
          option: 'A)',
          optionValue: quizItem.attributes.optionOne,
          isSelected: selectedOptions[index] == quizItem.attributes.optionOne,
          isCorrect: correctOption == quizItem.attributes.optionOne,
          onOptionSelected: () {
            setState(() {
              selectedOptions[index] = quizItem.attributes.optionOne;
            });
            if (correctOption == quizItem.attributes.optionOne) {
              totalPoints += scores;
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AssetsConstant.correctIcon,
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        'Great Job!!!',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w900,
                          fontSize: 32.sp,
                          color: AppColors.text,
                        ),
                      ),
                    ],
                  ),
                ),
              );
              Future.delayed(const Duration(seconds: 3), () {
                context.pop();
              });
            } else {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => Container(),
              );
              Future.delayed(const Duration(seconds: 3), () {
                context.pop();
              });
            }
            Future.delayed(const Duration(seconds: 3), () {
              if (_questionIndex == quizzes.data.length - 1) {
                context.goNamed(RouterConstant.quizDone, pathParameters: {
                  'timeRemaining': _formatTime(_secondsRemaining),
                  'totalPoints': totalPoints.toString(),
                  'totalQuestion': question.toString(),
                });
              } else {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              }
            });
          },
        ),
        SizedBox(height: 12.h),
        OptionWidget(
          option: 'B)',
          optionValue: quizItem.attributes.optionTwo,
          isSelected: selectedOptions[index] == quizItem.attributes.optionTwo,
          isCorrect: correctOption == quizItem.attributes.optionTwo,
          onOptionSelected: () {
            setState(() {
              selectedOptions[index] = quizItem.attributes.optionTwo;
            });
            if (correctOption == quizItem.attributes.optionTwo) {
              totalPoints += scores;
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AssetsConstant.correctIcon,
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        'Great Job!!!',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                          fontSize: 32.sp,
                          color: AppColors.text,
                        ),
                      ),
                    ],
                  ),
                ),
              );
              Future.delayed(const Duration(seconds: 3), () {
                context.pop();
              });
            } else {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => Container(),
              );
              Future.delayed(const Duration(seconds: 3), () {
                context.pop();
              });
            }
            Future.delayed(const Duration(seconds: 3), () {
              if (_questionIndex == quizzes.data.length - 1) {
                context.goNamed(RouterConstant.quizDone, pathParameters: {
                  'timeRemaining': _formatTime(_secondsRemaining),
                  'totalPoints': totalPoints.toString(),
                  'totalQuestion': question.toString(),
                });
              } else {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              }
            });
          },
        ),
        SizedBox(height: 12.h),
        OptionWidget(
          option: 'C)',
          optionValue: quizItem.attributes.optionThree,
          isSelected: selectedOptions[index] == quizItem.attributes.optionThree,
          isCorrect: correctOption == quizItem.attributes.optionThree,
          onOptionSelected: () {
            setState(() {
              selectedOptions[index] = quizItem.attributes.optionThree;
            });
            if (correctOption == quizItem.attributes.optionThree) {
              totalPoints += scores;
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AssetsConstant.correctIcon,
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        'Great Job!!!',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w900,
                          fontSize: 32.sp,
                          color: AppColors.text,
                        ),
                      ),
                    ],
                  ),
                ),
              );
              Future.delayed(const Duration(seconds: 3), () {
                context.pop();
              });
            } else {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => Container(),
              );
              Future.delayed(const Duration(seconds: 3), () {
                context.pop();
              });
            }
            Future.delayed(const Duration(seconds: 3), () {
              if (_questionIndex == quizzes.data.length - 1) {
                context.goNamed(RouterConstant.quizDone, pathParameters: {
                  'timeRemaining': _formatTime(_secondsRemaining),
                  'totalPoints': totalPoints.toString(),
                  'totalQuestion': question.toString(),
                });
              } else {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              }
            });
          },
        ),
        SizedBox(height: 12.h),
        OptionWidget(
          option: 'D)',
          optionValue: quizItem.attributes.optionFour,
          isSelected: selectedOptions[index] == quizItem.attributes.optionFour,
          isCorrect: correctOption == quizItem.attributes.optionFour,
          onOptionSelected: () {
            setState(() {
              selectedOptions[index] = quizItem.attributes.optionFour;
            });
            if (correctOption == quizItem.attributes.optionFour) {
              totalPoints += scores;
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AssetsConstant.correctIcon,
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        'Great Job!!!',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w900,
                          fontSize: 32.sp,
                          color: AppColors.text,
                        ),
                      ),
                    ],
                  ),
                ),
              );
              Future.delayed(const Duration(seconds: 3), () {
                context.pop();
              });
            } else {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => Container(),
              );
              Future.delayed(const Duration(seconds: 3), () {
                context.pop();
              });
            }
            Future.delayed(const Duration(seconds: 3), () {
              if (_questionIndex == quizzes.data.length - 1) {
                context.goNamed(RouterConstant.quizDone, pathParameters: {
                  'timeRemaining': _formatTime(_secondsRemaining),
                  'totalPoints': totalPoints.toString(),
                  'totalQuestion': question.toString(),
                });
              } else {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              }
            });
          },
        ),
      ],
    );
  }
}
