import 'package:flutter/widgets.dart';

/// Extension to create EdgeInsets quickly and cleanly.
/// Example usage:
/// ```dart
/// 16.paddingAll
/// 8.paddingHorizontal
/// 12.paddingVertical
/// 8.paddingTop + 16.paddingBottom
/// ```
extension PaddingExtension on num {
  /// Creates EdgeInsets with equal padding on all sides.
  EdgeInsets get paddingAll => EdgeInsets.all(toDouble());

  /// Creates EdgeInsets with vertical (top + bottom) padding.
  EdgeInsets get paddingVertical => EdgeInsets.symmetric(vertical: toDouble());

  /// Creates EdgeInsets with horizontal (left + right) padding.
  EdgeInsets get paddingHorizontal =>
      EdgeInsets.symmetric(horizontal: toDouble());

  /// Creates EdgeInsets with padding only on the top.
  EdgeInsets get paddingTop => EdgeInsets.only(top: toDouble());

  /// Creates EdgeInsets with padding only on the bottom.
  EdgeInsets get paddingBottom => EdgeInsets.only(bottom: toDouble());

  /// Creates EdgeInsets with padding only on the left.
  EdgeInsets get paddingLeft => EdgeInsets.only(left: toDouble());

  /// Creates EdgeInsets with padding only on the right.
  EdgeInsets get paddingRight => EdgeInsets.only(right: toDouble());
}
