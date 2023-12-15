import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../utils/assets_constant.dart';
import '../utils/themes/app_colors.dart';
import '../utils/themes/app_fonts.dart';
import '../widgets/primary_elevated_button_widget.dart';
import '../widgets/text_button_widget.dart';
import '../widgets/text_field_underline_widget.dart';

class RegisterScreenPage extends StatefulWidget {
  const RegisterScreenPage({super.key});

  @override
  State<RegisterScreenPage> createState() => _RegisterScreenPageState();
}

class _RegisterScreenPageState extends State<RegisterScreenPage> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 36.sp, vertical: 56.sp),
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage(
              AssetsConstant.bgRegisterScreen,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              AssetsConstant.logoSagaraCodingCard,
              width: 140.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Join Us!'.toUpperCase(),
                  style: AppFonts.appFont.displaySmall!.copyWith(
                    color: AppColors.text,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                const TextFieldUnderlineWidget(
                  hintText: 'Name',
                  prefixIcon: AssetsConstant.nameIcon,
                ),
                const TextFieldUnderlineWidget(
                  hintText: 'Username',
                  prefixIcon: AssetsConstant.usernameIcon,
                ),
                const TextFieldUnderlineWidget(
                  hintText: 'Email',
                  prefixIcon: AssetsConstant.emailIcon,
                ),
                TextFieldUnderlineWidget(
                  hintText: 'Password',
                  prefixIcon: AssetsConstant.passwordIcon,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: Icon(
                      obscureText ? Icons.visibility_off : Icons.visibility,
                      color: AppColors.primary,
                    ),
                  ),
                  obscureText: obscureText,
                ),
                TextFieldUnderlineWidget(
                  hintText: 'Re-enter Password',
                  prefixIcon: AssetsConstant.passwordIcon,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: Icon(
                      obscureText ? Icons.visibility_off : Icons.visibility,
                      color: AppColors.primary,
                    ),
                  ),
                  obscureText: obscureText,
                ),
                SizedBox(height: 16.h),
                PrimaryElevatedButtonWidget(
                  onPressed: () {},
                  text: 'Sign Up',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: AppFonts.appFont.labelLarge,
                    ),
                    TextButtonWidget(
                      onPressed: () {
                        context.go('/login');
                      },
                      text: 'Log in',
                      color: AppColors.primary,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
