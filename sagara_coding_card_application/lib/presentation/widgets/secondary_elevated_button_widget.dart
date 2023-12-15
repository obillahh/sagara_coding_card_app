import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/assets_constant.dart';
import '../utils/themes/app_colors.dart';
import '../utils/themes/app_fonts.dart';

class SecondaryElevatedButtonWidget extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final SvgPicture? icon;
  const SecondaryElevatedButtonWidget({
    Key? key,
    required this.onPressed,
    required this.text,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.background,
        minimumSize: Size(280.w, 36.h),
        side: const BorderSide(color: AppColors.text),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon ?? const Text(''),
          SizedBox(width: 8.w),
          Text(
            text,
            style: AppFonts.appFont.titleMedium!.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
