import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/reset_password_request_model.dart';
import 'package:sagara_coding_card_application/presentation/manager/auth_manage/auth/auth_bloc.dart';
import 'package:sagara_coding_card_application/presentation/utils/constant/assets_constant.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_colors.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_fonts.dart';
import 'package:sagara_coding_card_application/presentation/widgets/secondary_elevated_button_widget.dart';
import 'package:sagara_coding_card_application/presentation/widgets/text_field_underline_widget.dart';

class ResetPasswordScreenPage extends StatefulWidget {
  const ResetPasswordScreenPage({super.key});

  @override
  _ResetPasswordScreenPageState createState() => _ResetPasswordScreenPageState();
}

class _ResetPasswordScreenPageState extends State<ResetPasswordScreenPage> {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final codeController = TextEditingController();

  bool passwordObscureText = true;
  bool confirmPasswordObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'create a new password'.toUpperCase(),
              style: AppFonts.appFont.headlineSmall!.copyWith(
                fontWeight: FontWeight.w100,
                color: AppColors.placeholder,
              ),
            ),
            Text(
              "create a new password with guaranteed security by adding numbers and other unique features",
              style: AppFonts.appFont.bodyMedium,
            ),
            SizedBox(height: 16.h),
            TextFieldUnderlineWidget(
              nameTextField: 'password',
              validators: (p0) {
                return null;
              },
              // validators: FormBuilderValidators.required(),
              controller: passwordController,
              hintText: 'Password',
              prefixIcon: AssetsConstant.passwordIcon,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    passwordObscureText = !passwordObscureText;
                  });
                },
                icon: Icon(
                  passwordObscureText ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.primary,
                ),
              ),
              obscureText: passwordObscureText,
              keyboardType: TextInputType.visiblePassword,
            ),
            TextFieldUnderlineWidget(
              nameTextField: 'confirm_password',
              validators: (p0) {
                return null;
              },
              // validators: FormBuilderValidators.required(),
              controller: passwordController,
              hintText: 'Confirm Password',
              prefixIcon: AssetsConstant.passwordIcon,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    confirmPasswordObscureText = !confirmPasswordObscureText;
                  });
                },
                icon: Icon(
                  confirmPasswordObscureText ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.primary,
                ),
              ),
              obscureText: confirmPasswordObscureText,
              keyboardType: TextInputType.visiblePassword,
            ),
            TextFieldUnderlineWidget(
              nameTextField: 'code',
              validators: (p0) {
                return null;
              },
              // validators: FormBuilderValidators.required(),
              hintText: 'Code',
              prefixIcon: AssetsConstant.emailIcon,
              controller: codeController,
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 16.h),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 8.h),
                BlocListener<AuthBloc, AuthState>(
                  listener: (context, state) {
                    if (state is ResetPasswordSuccess) {
                      context.go('/login');
                    }
                  },
                  child: SecondaryElevatedButtonWidget(
                    onPressed: () {
                      context.read<AuthBloc>().add(
                            ResetPasswordEvent(
                              requestModel: ResetPasswordRequestModel(
                                  password: passwordController.text,
                                  passwordConfirmation: confirmPasswordController.text,
                                  code: codeController.text),
                            ),
                          );
                    },
                    text: 'Reset Password',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
