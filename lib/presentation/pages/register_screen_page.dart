import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/register_request_model.dart';
import 'package:sagara_coding_card_application/presentation/manager/auth_manage/login/auth_bloc.dart';

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
      resizeToAvoidBottomInset: false,
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
                  // TextFieldUnderlineWidget(
                  //   nameTextField: 'name',
                  //   validators: FormBuilderValidators.required(),
                  //   controller: nameController,
                  //   hintText: 'Name',
                  //   prefixIcon: AssetsConstant.nameIcon,
                  // ),
                  TextFieldUnderlineWidget(
                    nameTextField: 'email',
                    validators: (p0) {
                      if (FormBuilderValidators.required()(p0) != null) {
                        return 'Email is required';
                      } else if (FormBuilderValidators.email()(p0) != null) {
                        return 'Invalid email format';
                      }
                      return null;
                    },
                    controller: emailController,
                    hintText: 'Email',
                    prefixIcon: AssetsConstant.emailIcon,
                  ),
                  TextFieldUnderlineWidget(
                    nameTextField: 'username',
                    validators: FormBuilderValidators.required(),
                    controller: usernameController,
                    hintText: 'Username',
                    prefixIcon: AssetsConstant.usernameIcon,
                  ),
                  TextFieldUnderlineWidget(
                    nameTextField: 'password',
                    validators: (p0) {
                      if (FormBuilderValidators.required()(p0) != null) {
                        return 'Password is required';
                      } else if (FormBuilderValidators.minLength(8)(p0) !=
                          null) {
                        return 'Password must be at least 8 characters long';
                      }
                      // if (p0 == null || p0.isEmpty) {
                      //   return 'Password is required';
                      // }
                      // if (!p0.contains(RegExp(r'[A-Z]'))) {
                      //   return 'Password must contain at least one uppercase letter';
                      // }
                      // if (!p0.contains(RegExp(r'[a-z]'))) {
                      //   return 'Password must contain at least one lowercase letter';
                      // }
                      // if (!p0.contains(RegExp(r'[0-9]'))) {
                      //   return 'Password must contain at least one number';
                      // }
                      // if (p0.length < 8) {
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
                  ),
                  // TextFieldUnderlineWidget(
                  //   nameTextField: 're-enter-password',
                  //   validators: (p0) {
                  //     if (FormBuilderValidators.required()(p0) != null) {
                  //       return 'Enter your password again';
                  //     } else if (p0 != passwordController.text) {
                  //       return 'Password does not match';
                  //     }
                  //     return null;
                  //   },
                  //   controller: confirmPasswordController,
                  //   hintText: 'Re-enter Password',
                  //   prefixIcon: AssetsConstant.passwordIcon,
                  //   suffixIcon: IconButton(
                  //     onPressed: () {
                  //       setState(
                  //         () {
                  //           obscureText = !obscureText;
                  //         },
                  //       );
                  //     },
                  //     icon: Icon(
                  //       obscureText ? Icons.visibility_off : Icons.visibility,
                  //       color: AppColors.primary,
                  //     ),
                  //   ),
                  //   obscureText: obscureText,
                  // ),
                  SizedBox(height: 16.h),
                  BlocListener<AuthBloc, AuthState>(
                    listener: (context, state) {
                      if (state is AuthRegisterSuccess) {
                        context.go('/login');
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
    );
  }
}
