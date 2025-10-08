import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';

class BottomFadeBlur extends StatelessWidget {
  const BottomFadeBlur({
    super.key,
    required this.image,
    required this.subImageLeft,
    required this.subImageRight,
  });

  final Widget image;
  final Widget subImageLeft;
  final Widget subImageRight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRect(
          child: Align(
            alignment: Alignment.topCenter,
            heightFactor: 0.8,
            child: image,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: 200,
            height: 10,
            decoration: BoxDecoration(
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: AppColors.white,
                  spreadRadius: 50,
                  blurRadius: 35,
                  blurStyle: BlurStyle.normal,
                ),
              ],
            ),
          ),
        ),
        Positioned(left: 0, bottom: AppSize.s2, child: subImageLeft),
        Positioned(right: 0, top: AppSize.s10, child: subImageRight),
      ],
    );
  }
}
