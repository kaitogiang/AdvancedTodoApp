import 'package:flutter/material.dart';

import 'app_colors.dart';

/// AppTextStyles provides a set of standardized text styles for the app.
/// - Default font is 'Inter'
/// - Allows overriding fontWeight, fontFamily, and color
class AppTextStyles {
  /// Base method to create a TextStyle
  /// [fontSize] -> size of the text
  /// [fontWeight] -> weight of the font
  /// [color] -> text color
  /// [fontFamily] -> font family
  static TextStyle _base({
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
    Color color = AppColors.textPrimary,
    String fontFamily = 'Inter',
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: fontFamily,
    );
  }

  /// H1 - Large heading
  /// Default: bold, fontSize 32
  static TextStyle h1({
    Color? color,
    FontWeight? fontWeight,
    String fontFamily = 'Inter',
  }) => _base(
    fontSize: 32,
    fontWeight: fontWeight ?? FontWeight.bold,
    color: color ?? AppColors.textPrimary,
    fontFamily: fontFamily,
  );

  /// H2 - Medium heading
  /// Default: semi-bold, fontSize 24
  static TextStyle h2({
    Color? color,
    FontWeight? fontWeight,
    String fontFamily = 'Inter',
  }) => _base(
    fontSize: 24,
    fontWeight: fontWeight ?? FontWeight.w600,
    color: color ?? AppColors.textPrimary,
    fontFamily: fontFamily,
  );

  /// H3 - Small heading
  /// Default: medium, fontSize 20
  static TextStyle h3({
    Color? color,
    FontWeight? fontWeight,
    String fontFamily = 'Inter',
  }) => _base(
    fontSize: 20,
    fontWeight: fontWeight ?? FontWeight.w500,
    color: color ?? AppColors.textPrimary,
    fontFamily: fontFamily,
  );

  /// Body - Main content text
  /// Default: normal weight, fontSize 16
  static TextStyle body({
    Color? color,
    FontWeight? fontWeight,
    String fontFamily = 'Inter',
  }) => _base(
    fontSize: 16,
    fontWeight: fontWeight ?? FontWeight.normal,
    color: color ?? AppColors.textPrimary,
    fontFamily: fontFamily,
  );

  /// Body small - Smaller content text
  /// Default: normal weight, fontSize 14
  static TextStyle bodySmall({
    Color? color,
    FontWeight? fontWeight,
    String fontFamily = 'Inter',
  }) => _base(
    fontSize: 14,
    fontWeight: fontWeight ?? FontWeight.normal,
    color: color ?? AppColors.textSecondary,
    fontFamily: fontFamily,
  );

  /// Caption / Note
  /// Default: regular weight, fontSize 12
  static TextStyle caption({
    Color? color,
    FontWeight? fontWeight,
    String fontFamily = 'Inter',
  }) => _base(
    fontSize: 12,
    fontWeight: fontWeight ?? FontWeight.w400,
    color: color ?? AppColors.textSecondary,
    fontFamily: fontFamily,
  );

  /// Button text
  /// Default: bold, fontSize 16, color white
  static TextStyle button({
    Color? color,
    FontWeight? fontWeight,
    String fontFamily = 'Inter',
  }) => _base(
    fontSize: 16,
    fontWeight: fontWeight ?? FontWeight.bold,
    color: color ?? AppColors.white,
    fontFamily: fontFamily,
  );
}
