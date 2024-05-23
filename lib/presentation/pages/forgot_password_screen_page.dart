import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/forgot_password_request_model.dart';
import 'package:sagara_coding_card_application/presentation/manager/auth_manage/auth/auth_bloc.dart';
import 'package:sagara_coding_card_application/presentation/utils/constant/assets_constant.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_colors.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_fonts.dart';
import 'package:sagara_coding_card_application/presentation/widgets/secondary_elevated_button_widget.dart';
import 'package:sagara_coding_card_application/presentation/widgets/text_field_underline_widget.dart';

class ForgotPasswordScreenPage extends StatefulWidget {
  const ForgotPasswordScreenPage({super.key});

  @override
  State<ForgotPasswordScreenPage> createState() => _ForgotPasswordScreenPageState();
}

class _ForgotPasswordScreenPageState extends State<ForgotPasswordScreenPage> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: AppColors.primary,
                  size: 38.sp,
                ),
              ),
            ),
            Text(
              'send your email address'.toUpperCase(),
              style: AppFonts.appFont.headlineSmall!.copyWith(
                fontWeight: FontWeight.w100,
                color: AppColors.placeholder,
              ),
            ),
            Text(
              "We need your email address. We will send a password reset link to your email address which will expire in 15 minutes.",
              style: AppFonts.appFont.bodyMedium,
            ),
            SizedBox(height: 16.h),
            TextFieldUnderlineWidget(
              nameTextField: 'email',
              validators: (p0) {
                return null;
              },
              // validators: FormBuilderValidators.required(),
              hintText: 'Email',
              prefixIcon: AssetsConstant.emailIcon,
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16.h),
            Center(
              child: BlocListener<AuthBloc, AuthState>(
                listener: (context, state) {
                  if (state is ForgotPasswordSuccess) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Success : ${state.forgotPassword.ok}'),
                            content: const Text('Password reset link sent'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  context.go('/login');
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        });
                  }
                },
                child: SecondaryElevatedButtonWidget(
                  onPressed: () {
                    context.read<AuthBloc>().add(
                          ForgotPasswordEvent(
                            requestModel: ForgotPasswordRequestModel(email: emailController.text),
                          ),
                        );
                  },
                  text: 'Send',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
