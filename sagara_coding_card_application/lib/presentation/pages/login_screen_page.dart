import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sagara_coding_card_application/presentation/utils/constant/assets_constant.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_fonts.dart';
import 'package:sagara_coding_card_application/presentation/widgets/text_field_underline_widget.dart';

import '../manager/auth_manage/bloc/auth_bloc.dart';
import '../utils/themes/app_colors.dart';
import '../widgets/primary_elevated_button_widget.dart';
import '../widgets/secondary_elevated_button_widget.dart';
import '../widgets/text_button_widget.dart';

class LoginScreenPage extends StatefulWidget {
  const LoginScreenPage({super.key});

  @override
  State<LoginScreenPage> createState() => _LoginScreenPageState();
}

class _LoginScreenPageState extends State<LoginScreenPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool? rememberMe = false;
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.background,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 36.sp, vertical: 56.sp),
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage(
              AssetsConstant.bgLoginScreen,
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
                  'Welcome Players!'.toUpperCase(),
                  style: AppFonts.appFont.displaySmall!.copyWith(
                    color: AppColors.text,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                TextFieldUnderlineWidget(
                  hintText: 'Username',
                  prefixIcon: AssetsConstant.usernameIcon,
                  controller: usernameController,
                ),
                TextFieldUnderlineWidget(
                  controller: passwordController,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: rememberMe,
                          onChanged: (value) {
                            setState(() {
                              rememberMe = value;
                            });
                          },
                          activeColor: AppColors.primary,
                          checkColor: AppColors.text,
                          side: const BorderSide(color: AppColors.primary),
                        ),
                        Text(
                          'Remember me',
                          style: AppFonts.appFont.labelLarge!.copyWith(
                            color: AppColors.placeholder,
                          ),
                        )
                      ],
                    ),
                    TextButtonWidget(
                      onPressed: () {},
                      text: 'Forgot Password?',
                    ),
                  ],
                ),
                BlocListener<AuthBloc, AuthState>(
                  listenWhen: (previous, current) {
                    return previous != current;
                  },
                  listener: (context, state) {
                    if (state is AuthSuccess) {
                      context.go('/home');
                    }
                  },
                  child: PrimaryElevatedButtonWidget(
                    onPressed: () {
                      context.read<AuthBloc>().add(
                            LoginEvent(
                              username: usernameController.text,
                              password: passwordController.text,
                            ),
                          );
                    },
                    text: 'Log in',
                  ),
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        color: AppColors.text,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'or',
                        style: AppFonts.appFont.labelSmall!,
                      ),
                    ),
                    const Expanded(
                      child: Divider(
                        color: AppColors.text,
                      ),
                    ),
                  ],
                ),
                SecondaryElevatedButtonWidget(
                  onPressed: () {
                    context.push('/verification');
                  },
                  text: 'Continue with Google',
                  icon: SvgPicture.asset(AssetsConstant.googleIcon),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: AppFonts.appFont.labelLarge,
                    ),
                    TextButtonWidget(
                      onPressed: () {
                        context.go('/register');
                      },
                      text: 'Sign up',
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
