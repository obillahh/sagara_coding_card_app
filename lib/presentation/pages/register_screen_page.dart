import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/register_request_model.dart';
import 'package:sagara_coding_card_application/presentation/manager/auth_manage/auth/auth_bloc.dart';

import '../utils/constant/assets_constant.dart';
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
  final formKey = GlobalKey<FormBuilderState>();
  // final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    // nameController.dispose();
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Container(
          height: ScreenUtil().screenHeight,
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
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                AssetsConstant.logoSagaraCodingCard,
                width: 140.w,
              ),
              FormBuilder(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Join Us!'.toUpperCase(),
                      style: AppFonts.appFont.displaySmall!.copyWith(
                        color: AppColors.text,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    TextFieldUnderlineWidget(
                      nameTextField: 'email',
                      validators: (p0) {
                        return null;

                        // if (FormBuilderValidators.required()(p0) != null) {
                        //   return 'Email is required';
                        // } else if (FormBuilderValidators.email()(p0) != null) {
                        //   return 'Invalid email format';
                        // }
                        // return null;
                      },
                      controller: emailController,
                      hintText: 'Email',
                      prefixIcon: AssetsConstant.emailIcon,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    TextFieldUnderlineWidget(
                      nameTextField: 'username',
                      validators: (p0) {
                        return null;
                      },
                      // validators: FormBuilderValidators.required(),
                      controller: usernameController,
                      hintText: 'Username',
                      prefixIcon: AssetsConstant.usernameIcon,
                      keyboardType: TextInputType.name,
                    ),
                    TextFieldUnderlineWidget(
                      nameTextField: 'password',
                      validators: (p0) {
                        // if (FormBuilderValidators.required()(p0) != null) {
                        //   return 'Password is required';
                        // } else if (FormBuilderValidators.minLength(8)(p0) != null) {
                        //   return 'Password must be at least 8 characters long';
                        // }
                        return null;
                      },
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
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    SizedBox(height: 16.h),
                    BlocListener<AuthBloc, AuthState>(
                      listener: (context, state) {
                        try {
                          if (state is AuthRegisterSuccess || state is EmailConfirmationSuccess) {
                            showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('Confirmation Email Sent'),
                                  content: Column(
                                    children: [
                                      const Text(
                                        'Please check your email for the confirmation and click on the link.',
                                      ),
                                      SizedBox(height: 16.h),
                                      const CircularProgressIndicator(),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        context.go('/login');
                                      },
                                      child: const Text('OK'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        } catch (e) {
                          if (state is AuthErrorState) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Registration failed: $e'),
                            ));
                          }
                        }
                      },
                      child: PrimaryElevatedButtonWidget(
                        onPressed: () {
                          if (formKey.currentState!.saveAndValidate()) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              },
                            );
                            context.read<AuthBloc>().add(
                                  RegisterEvent(
                                    requestModel: RegisterRequestModel(
                                      email: emailController.text,
                                      password: passwordController.text,
                                      username: usernameController.text,
                                    ),
                                  ),
                                );
                            context.read<AuthBloc>().add(
                                  SendEmailConfirmationEvent(email: emailController.text),
                                );
                          }
                        },
                        text: 'Sign Up',
                      ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
