import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.isOnboarding = false,
    this.onAction,
  });

  final String title;
  final bool isOnboarding;
  final Widget? onAction;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: AppTextStyles.h3()),
      centerTitle: true,
      actions: [onAction ?? const SizedBox.shrink()],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
