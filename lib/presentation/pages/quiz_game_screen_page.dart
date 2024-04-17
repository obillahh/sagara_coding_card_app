import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sagara_coding_card_application/presentation/manager/card_manage/get_card_id/bloc/card_id_bloc.dart';
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
  late List<String?> selectedOptions;
  late PageController _pageController;
  Timer? _timer;
  int _secondsRemaining = 60;
  int _questionIndex = 0;

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
          context.go('/home');
        }
      });
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
          padding: const EdgeInsets.only(left: 8),
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
            height: 380.h,
            child: Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.w),
              child: BlocBuilder<CardIdBloc, CardIdState>(
                builder: (context, state) {
                  if (state is CardIdSuccessState) {
                    final quizzes = state.card.attributes.quizzes;
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
                                      value: _secondsRemaining / 60,
                                      strokeWidth: 4.w,
                                      color: AppColors.text,
                                    ),
                                  ),
                                  SizedBox(width: 12.w),
                                  Text(
                                    '$_secondsRemaining s',
                                    style: AppFonts.appFont.titleLarge!.copyWith(
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
                              itemCount: quizzes.data.length,
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
    return Column(
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
              showDialog(
                context: context,
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
              Future.delayed(
                const Duration(seconds: 3),
                () {
                  context.pop();
                  if (_questionIndex == quizzes.data.length - 1) {
                    context.go("/quiz_done");
                  }
                  // else {
                  //   _pageController.nextPage(
                  //       duration: const Duration(milliseconds: 500), curve: Curves.ease);
                  // }
                },
              );
            }
            Future.delayed(
              const Duration(seconds: 2),
              () {
                if (_questionIndex == quizzes.data.length - 1) {
                  context.go("/quiz_done");
                } else {
                  _pageController.nextPage(
                      duration: const Duration(milliseconds: 500), curve: Curves.ease);
                }
              },
            );
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
              showDialog(
                context: context,
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
                if (_questionIndex == quizzes.data.length - 1) {
                  context.go("/quiz_done");
                }
                // else {
                //   _pageController.nextPage(
                //       duration: const Duration(milliseconds: 500), curve: Curves.ease);
                // }
              });
            }
            Future.delayed(const Duration(seconds: 2), () {
              if (_questionIndex == quizzes.data.length - 1) {
                context.go("/quiz_done");
              } else {
                _pageController.nextPage(
                    duration: const Duration(milliseconds: 500), curve: Curves.ease);
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
              showDialog(
                context: context,
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
                if (_questionIndex == quizzes.data.length - 1) {
                  context.go("/quiz_done");
                }
                // else {
                //   _pageController.nextPage(
                //       duration: const Duration(milliseconds: 500), curve: Curves.ease);
                // }
              });
            }
            Future.delayed(const Duration(seconds: 2), () {
              if (_questionIndex == quizzes.data.length - 1) {
                context.go("/quiz_done");
              } else {
                _pageController.nextPage(
                    duration: const Duration(milliseconds: 500), curve: Curves.ease);
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
              showDialog(
                context: context,
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
                if (_questionIndex == quizzes.data.length - 1) {
                  context.go("/quiz_done");
                }
                // else {
                //   _pageController.nextPage(
                //       duration: const Duration(milliseconds: 500), curve: Curves.ease);
                // }
              });
            }
            Future.delayed(const Duration(seconds: 2), () {
              if (_questionIndex == quizzes.data.length - 1) {
                context.go("/quiz_done");
              } else {
                _pageController.nextPage(
                    duration: const Duration(milliseconds: 500), curve: Curves.ease);
              }
            });
          },
        ),
      ],
    );
  }
}
