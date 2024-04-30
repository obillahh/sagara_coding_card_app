import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/themes/app_colors.dart';
import '../utils/themes/app_fonts.dart';

class TextFieldUnderlineWidget extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool? obscureText;
  final String nameTextField;
  final String hintText;
  final String prefixIcon;
  final IconButton? suffixIcon;
  final String? Function(String?) validators;
  const TextFieldUnderlineWidget({
    super.key,
    this.obscureText,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    required this.controller,
    required this.keyboardType,
    required this.nameTextField,
    required this.validators,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      controller: controller,
      validator: validators,
      name: nameTextField,
      keyboardType: keyboardType,
      style: AppFonts.appFont.labelLarge!.copyWith(
        color: AppColors.text,
      ),
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primary,
          ),
        ),
        hintText: hintText,
        hintStyle: AppFonts.appFont.labelLarge!.copyWith(
          color: AppColors.placeholder,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            prefixIcon,
            width: 18.w,
          ),
        ),
        suffixIcon: suffixIcon,
      ),
      obscureText: obscureText ?? false,
    );
  }
}
