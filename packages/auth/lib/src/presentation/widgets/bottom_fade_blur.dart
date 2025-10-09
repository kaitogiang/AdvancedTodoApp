import 'package:core/core.dart';
import 'package:flutter/material.dart';

class SubImagePosition {
  const SubImagePosition({this.bottom, this.top, this.left, this.right});

  final double? bottom;
  final double? left;
  final double? right;
  final double? top;
}

class BottomFadeBlur extends StatelessWidget {
  const BottomFadeBlur({
    super.key,
    required this.image,
    required this.subImageLeft,
    required this.subImageRight,
    required this.subImageLeftPosition,
    required this.subImageRightPosition,
  });

  final Widget image;
  final Widget subImageLeft;
  final Widget subImageRight;
  final SubImagePosition subImageLeftPosition;
  final SubImagePosition subImageRightPosition;

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
        Positioned(
          top: subImageLeftPosition.top,
          right: subImageLeftPosition.right,
          bottom: subImageLeftPosition.bottom,
          left: subImageLeftPosition.left,
          child: subImageLeft,
        ),
        Positioned(
          top: subImageRightPosition.top,
          right: subImageRightPosition.right,
          bottom: subImageRightPosition.bottom,
          left: subImageRightPosition.left,
          child: subImageRight,
        ),
      ],
    );
  }
}
