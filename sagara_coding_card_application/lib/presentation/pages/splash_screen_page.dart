import 'package:flutter/material.dart';
import 'package:sagara_coding_card_application/presentation/utils/assets_constant.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AssetsConstant.bgSplashScreen,
            ),
          ),
        ),
      ),
    );
  }
}
