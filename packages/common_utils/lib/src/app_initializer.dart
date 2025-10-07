import 'package:common_utils/common_utils.dart';
import 'package:flutter/cupertino.dart';

class AppInitializer {
  static Future<void> init(BuildContext context) async {
    AppSize.init(context);
  }
}
