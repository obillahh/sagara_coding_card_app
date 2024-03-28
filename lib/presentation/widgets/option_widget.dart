import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_colors.dart';

class OptionWidget extends StatelessWidget {
  const OptionWidget({
    super.key,
    required this.option,
    required this.optionValue,
    // required this.isCorrect,
    // required this.onOptionSelected,
  });

  final String option;
  final String optionValue;
  // final bool isCorrect;
  // final Function(bool) onOptionSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // onOptionSelected(optionValue == correctOption);
      },
      child: Container(
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 10.h,
        ),
        decoration: BoxDecoration(
          // color: isCorrect ? Colors.green : optionValue == correctOption ? Colors.red : Colors.transparent,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: AppColors.text,
            width: 2.w,
          ),
        ),
        child: Row(
          children: [
            Text(
              option,
              style: TextStyle(
                color: AppColors.text,
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Text(
                optionValue,
                style: TextStyle(
                  color: AppColors.text,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
