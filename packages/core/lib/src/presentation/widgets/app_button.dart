import 'package:core/core.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.textStyle,
    this.backgroundColor,
  });

  final String title;
  final VoidCallback onPressed;
  final TextStyle? textStyle;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: backgroundColor ?? AppColors.primary,
        fixedSize: Size(context.width, AppSize.s56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s16),
        ),
      ),
      onPressed: onPressed ?? () => {},
      child: Text(
        title,
        style: textStyle ?? AppTextStyles.body(color: AppColors.white),
      ),
    );
  }
}
