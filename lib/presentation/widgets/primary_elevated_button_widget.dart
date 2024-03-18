import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/themes/app_colors.dart';
import '../utils/themes/app_fonts.dart';

class PrimaryElevatedButtonWidget extends StatelessWidget {
  final Function() onPressed;
  final String text;
  const PrimaryElevatedButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        minimumSize: Size(280.w, 36.h),
      ),
      child: Text(
        text,
        style: AppFonts.appFont.titleMedium!.copyWith(
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
