abstract class AppNavigator {
  //Navigate to a specific screen
  void navigateTo(String routeName, {Object? arguments});

  //Replace current screen with a specific screen
  void replaceWith(String routeName, {Object? arguments});

  //Back to the previous screen
  void pop<T extends Object?>([T? result]);

  //Back until to a specific screen
  void popUntil(String routeName);

  //Push to a specific screen and clear other screen in stack
  void pushAndRemoveUntil(String routeName, {Object? arguments});

  bool canPop();
}
