import 'package:flutter/cupertino.dart';

extension NumberExtension on num {
  Widget get toVGap => SizedBox(width: toDouble());

  Widget get toHGap => SizedBox(height: toDouble());
}
