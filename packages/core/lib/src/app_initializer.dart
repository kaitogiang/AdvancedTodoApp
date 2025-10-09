import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';

class AppInitializer {
  static Future<void> init(BuildContext context) async {
    AppSize.init(context);
  }
}
