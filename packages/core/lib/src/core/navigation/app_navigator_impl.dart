import 'package:core/src/core/di/di.dart';
import 'package:core/src/core/navigation/app_navigator.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AppNavigator)
class AppNavigatorImpl implements AppNavigator {
  final _router = getIt<GoRouter>();

  @override
  bool canPop() {
    return _router.canPop();
  }

  @override
  void navigateTo(String routeName, {Object? arguments}) {
    _router.pushNamed(routeName, extra: arguments);
  }

  @override
  void pop<T extends Object?>([T? result]) {
    _router.pop(result);
  }

  @override
  void popUntil(String routeName) {
    _router.goNamed(routeName);
  }

  @override
  void pushAndRemoveUntil(String routeName, {Object? arguments}) {
    _router.pushReplacementNamed(routeName, extra: arguments);
  }

  @override
  void replaceWith(String routeName, {Object? arguments}) {
    _router.replaceNamed(routeName, extra: arguments);
  }
}
