import 'package:common_utils/common_utils.dart';
import 'package:common_utils/src/presentation/generated/assets.gen.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.isOnboarding = false,
    this.isShowBackIcon = true,
    this.onAction,
  });

  final String? title;
  final bool isOnboarding;
  final Widget? onAction;
  final bool isShowBackIcon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title ?? '', style: AppTextStyles.h3()),
      leading: isShowBackIcon
          ? Container(
              padding: EdgeInsets.all(15),
              child: Assets.icons.leftArrow.svg(package: 'common_utils'),
            )
          : const SizedBox.shrink(),
      centerTitle: true,
      backgroundColor: AppColors.transparent,
      actions: [onAction ?? const SizedBox.shrink()],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
