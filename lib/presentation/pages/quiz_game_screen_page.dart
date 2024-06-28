import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sagara_coding_card_application/presentation/manager/card_manage/bloc/card_bloc.dart';
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
  int totalPoints = 0;
  late int totalQuestions;

  late PageController _pageController;
  int _questionIndex = 0;
  int _secondsRemaining = 120;
  Timer? _timer;

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
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

  void showCorrectModal() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.background,
        content: SvgPicture.asset(AssetsConstant.correctIcon),
      ),
    );
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pop();
      if (_questionIndex < totalQuestions - 1) {
        _pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      } else {
        navigateToQuizDonePage();
      }
    });
  }

  void showIncorrectModal(String correctOption) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.background,
        title: const Text(
          'Incorrect',
          style: TextStyle(color: AppColors.primary),
        ),
        content: Text(
          'The correct answer is: $correctOption',
          style: const TextStyle(color: AppColors.text),
        ),
      ),
    );
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pop();
      if (_questionIndex < totalQuestions - 1) {
        _pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      } else {
        navigateToQuizDonePage();
      }
    });
  }

  Widget buildQuestionWidget(
    dynamic quizItem,
    int index,
    String correctOption,
    CardState state,
  ) {
    final quizzes = state.maybeWhen(
      success: (cardList, card, userData, checkCard) => card?.attributes.quizzes,
      orElse: () => null,
    );
    if (quizzes == null) {
      return const SizedBox();
    }

    final scores = quizzes.data[index].attributes.score;

    void handleOptionSelected(String option) {
      setState(() {
        selectedOptions[index] = option;
      });
      if (correctOption == option) {
        totalPoints += scores;
        showCorrectModal();
      } else {
        showIncorrectModal(correctOption);
      }
    }

    return SingleChildScrollView(
      child: Column(
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
            onOptionSelected: () => handleOptionSelected(quizItem.attributes.optionOne),
          ),
          SizedBox(height: 6.h),
          OptionWidget(
            option: 'B)',
            optionValue: quizItem.attributes.optionTwo,
            isSelected: selectedOptions[index] == quizItem.attributes.optionTwo,
            isCorrect: correctOption == quizItem.attributes.optionTwo,
            onOptionSelected: () => handleOptionSelected(quizItem.attributes.optionTwo),
          ),
          SizedBox(height: 6.h),
          OptionWidget(
            option: 'C)',
            optionValue: quizItem.attributes.optionThree,
            isSelected: selectedOptions[index] == quizItem.attributes.optionThree,
            isCorrect: correctOption == quizItem.attributes.optionThree,
            onOptionSelected: () => handleOptionSelected(quizItem.attributes.optionThree),
          ),
          SizedBox(height: 6.h),
          OptionWidget(
            option: 'D)',
            optionValue: quizItem.attributes.optionFour,
            isSelected: selectedOptions[index] == quizItem.attributes.optionFour,
            isCorrect: correctOption == quizItem.attributes.optionFour,
            onOptionSelected: () => handleOptionSelected(quizItem.attributes.optionFour),
          ),
        ],
      ),
    );
  }

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
      body: BlocBuilder<CardBloc, CardState>(
        builder: (context, state) {
          return state.maybeWhen(
            success: (cardList, card, userData, checkCard) {
              return SizedBox(
                width: double.infinity.w,
                height: double.infinity.h,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.network(
                    card!.attributes.avatarCard.data.attributes.url,
                    fit: BoxFit.fitWidth,
                    width: double.infinity.w,
                  ),
                ),
              );
            },
            orElse: () {
              return SizedBox(
                width: double.infinity.w,
                height: double.infinity.h,
              );
            },
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
            child: BlocBuilder<CardBloc, CardState>(
              builder: (context, state) {
                return state.maybeWhen(
                  success: (cardList, card, userData, checkCard) {
                    final quizzes = card!.attributes.quizzes;
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
                                  card.attributes.role.toUpperCase(),
                                  style: AppFonts.appFont.titleSmall!.copyWith(
                                    fontWeight: FontWeight.w800,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12.h),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.w,
                              vertical: 4.h,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.r),
                              color: AppColors.background,
                            ),
                            child: Text(
                              '${_questionIndex + 1} of ${quizzes.data.length} Questions',
                              style: const TextStyle(
                                fontWeight: FontWeight.w800,
                                color: AppColors.text,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(12.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              height: 280.h,
                              child: PageView.builder(
                                controller: _pageController,
                                itemCount: quizzes.data.length,
                                onPageChanged: (index) {
                                  setState(() {
                                    _questionIndex = index;
                                  });
                                },
                                itemBuilder: (context, index) {
                                  final quizItem = quizzes.data[index];
                                  final correctOption = quizItem.attributes.correctOption;
                                  return buildQuestionWidget(
                                    quizItem,
                                    index,
                                    correctOption,
                                    state,
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  orElse: () {
                    return Container();
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
