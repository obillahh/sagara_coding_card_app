import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/assets_constant.dart';
import '../utils/themes/app_colors.dart';
import '../utils/themes/app_fonts.dart';

class TextFieldUnderlineWidget extends StatelessWidget {
  final bool? obscureText;
  final String hintText;
  final String prefixIcon;
  final IconButton? suffixIcon;
  const TextFieldUnderlineWidget({
    Key? key,
    this.obscureText,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppFonts.appFont.labelLarge!.copyWith(
        color: AppColors.text, // Warna teks input
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
