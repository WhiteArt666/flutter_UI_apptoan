import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  // Reusable TextStyles
  static final titleStyle = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    height: 1.31,
    letterSpacing: -0.31,
  );

  static final sectionTitleStyle = TextStyle(
    color: Colors.black,
    fontSize: 13,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    height: 1.38,
    letterSpacing: -0.08,
  );

  static final bodyStyle = TextStyle(
    color: Colors.black,
    fontSize: 13,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    height: 1.38,
    letterSpacing: -0.08,
  );

  // Define reusable styles
  static final textPrimaryStyle = TextStyle(
    color: Colors.black,
    fontSize: 17,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    height: 1.29,
    letterSpacing: -0.43,
  );

  static final questionTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 17,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    height: 1.29,
    letterSpacing: -0.43,
  );

  static final answerTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    height: 1.31,
    letterSpacing: -0.31,
  );

  static final secondaryTextStyle = TextStyle(
    color: Color(0x993C3C43),
    fontSize: 17,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    height: 1.29,
    letterSpacing: -0.43,
  );
  // Large Title Emphasized - Secondary
  static final largeTitleEmphasizedSecondary = TextStyle(
    fontFamily: 'Inter',
    fontSize: 34,
    fontWeight: FontWeight.w700,
    height: 41 / 34,
    color: AppColors.textSecondary,
  );

  // Large Title Emphasized - Tertiary
  static final largeTitleEmphasizedTertiary = TextStyle(
    fontFamily: 'Inter',
    fontSize: 34,
    fontWeight: FontWeight.w700,
    height: 41 / 34,
    color: AppColors.textTertiary,
  );

  // Large Title Emphasized - Quaternary
  static final largeTitleEmphasizedQuaternary = TextStyle(
    fontFamily: 'Inter',
    fontSize: 34,
    fontWeight: FontWeight.w700,
    height: 41 / 34,
    color: AppColors.textQuaternary,
  );

  // Large Title Regular
  static final largeTitleRegular = TextStyle(
    fontFamily: 'Inter',
    fontSize: 34,
    fontWeight: FontWeight.w400,
    height: 41 / 34,
    color: AppColors.textPrimary,
  );
}
