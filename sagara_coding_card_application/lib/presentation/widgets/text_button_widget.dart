import 'package:flutter/material.dart';

import '../utils/themes/app_fonts.dart';

class TextButtonWidget extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final Color? color;
  const TextButtonWidget({
    Key? key,
    required this.onPressed,
    required this.text,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: AppFonts.appFont.bodySmall!.copyWith(
          fontWeight: FontWeight.w500,
          color: color,
        ),
      ),
    );
  }
}
