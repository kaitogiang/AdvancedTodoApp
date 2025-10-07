import 'package:flutter/widgets.dart';

/// A simple, consistent set of app sizes used across the project.
///
/// Call `AppSize.init(context)` once in your app (e.g., inside the MaterialApp builder).
///
/// Example:
/// ```dart
/// AppSize.init(context);
///
/// SizedBox(height: AppSize.s16);
/// Padding(padding: EdgeInsets.all(AppSize.s12));
/// BorderRadius.circular(AppSize.radiusMd);
/// Text('Hello', style: TextStyle(fontSize: AppSize.textMd));
/// ```
class AppSize {
  static late double _scale;

  /// Base width of the design reference (iPhone 11 / 12 / 13)
  static const double _baseWidth = 375.0;

  /// Initialize once in the app entry to calculate scaling ratio.
  static void init(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    _scale = width / _baseWidth;
  }

  /// Scale any custom value based on device width.
  static double scale(double value) => value * _scale;

  // === Spacing ===
  static double get s2 => scale(2);

  static double get s4 => scale(4);

  static double get s6 => scale(6);

  static double get s8 => scale(8);

  static double get s10 => scale(10);

  static double get s12 => scale(12);

  static double get s14 => scale(14);

  static double get s16 => scale(16);

  static double get s20 => scale(20);

  static double get s24 => scale(24);

  static double get s28 => scale(28);

  static double get s32 => scale(32);

  static double get s40 => scale(40);

  static double get s48 => scale(48);

  static double get s56 => scale(56);

  static double get s64 => scale(64);

  static double get s80 => scale(80);

  static double get s100 => scale(100);

  // === Radius ===
  static double get radiusXs => scale(4);

  static double get radiusSm => scale(8);

  static double get radiusMd => scale(12);

  static double get radiusLg => scale(16);

  static double get radiusXl => scale(24);

  static double get radiusFull => scale(9999);

  // === Text ===
  static double get textXs => scale(10);

  static double get textSm => scale(12);

  static double get textMd => scale(14);

  static double get textLg => scale(16);

  static double get textXl => scale(20);

  static double get text2Xl => scale(24);

  static double get text3Xl => scale(32);

  // === Icon ===
  static double get iconSm => scale(16);

  static double get iconMd => scale(24);

  static double get iconLg => scale(32);

  static double get iconXl => scale(40);

  // === Button Heights ===
  static double get btnSm => scale(36);

  static double get btnMd => scale(44);

  static double get btnLg => scale(52);
}
