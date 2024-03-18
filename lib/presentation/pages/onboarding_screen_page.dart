import 'package:flutter/material.dart';
import 'package:sagara_coding_card_application/presentation/widgets/screen_onboarding/fifth_screen_onboarding_widget.dart';
import 'package:sagara_coding_card_application/presentation/widgets/screen_onboarding/fourth_screen_onboarding_widget.dart';
import 'package:sagara_coding_card_application/presentation/widgets/screen_onboarding/second_screen_onboarding_widget.dart';
import 'package:sagara_coding_card_application/presentation/widgets/screen_onboarding/third_screen_onboarding_widget.dart';

import '../utils/themes/app_colors.dart';
import '../widgets/screen_onboarding/first_screen_onboarding_widget.dart';

class OnboardingScreenPage extends StatefulWidget {
  const OnboardingScreenPage({super.key});

  @override
  State<OnboardingScreenPage> createState() => _OnboardingScreenPageState();
}

class _OnboardingScreenPageState extends State<OnboardingScreenPage> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: PageView(
        controller: _pageController,
        children: [
          FirstScreenOnboardingWidget(pageController: _pageController),
          SecondScreenOnboardingWidget(pageController: _pageController),
          ThirdScreenOnboardingWidget(pageController: _pageController),
          FourthScreenOnboardingWidget(pageController: _pageController),
          FifthScreenOnboardingWidget(pageController: _pageController),
        ],
      ),
    );
  }
}
