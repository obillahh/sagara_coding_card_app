import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_colors.dart';

class AppFonts {
  static TextTheme appFont = TextTheme(
    displayLarge: GoogleFonts.barlow(
      fontSize: 102,
      color: AppColors.text,
    ),
    displayMedium: GoogleFonts.barlow(
      fontSize: 64,
      color: AppColors.text,
    ),
    displaySmall: GoogleFonts.barlow(
      fontSize: 48,
      color: AppColors.text,
    ),
    headlineMedium: GoogleFonts.barlow(
      fontSize: 36,
      color: AppColors.text,
    ),
    headlineSmall: GoogleFonts.barlow(
      fontSize: 27,
      color: AppColors.text,
    ),
    titleLarge: GoogleFonts.barlow(
      fontSize: 21,
      color: AppColors.text,
    ),
    titleMedium: GoogleFonts.barlow(
      fontSize: 17,
      color: AppColors.text,
    ),
    titleSmall: GoogleFonts.barlow(
      fontSize: 15,
      color: AppColors.text,
    ),
    bodyLarge: GoogleFonts.barlow(
      fontSize: 17,
      color: AppColors.text,
    ),
    bodyMedium: GoogleFonts.barlow(
      fontSize: 15,
      color: AppColors.text,
    ),
    labelLarge: GoogleFonts.barlow(
      fontSize: 15,
      color: AppColors.text,
    ),
    bodySmall: GoogleFonts.barlow(
      fontSize: 13,
      color: AppColors.text,
    ),
    labelSmall: GoogleFonts.barlow(
      fontSize: 11,
      color: AppColors.text,
    ),
  );
}
