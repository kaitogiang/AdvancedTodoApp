import 'package:auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:main_app/features/base/main_app_wrapper.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final mainNavigatorKey = GlobalKey<NavigatorState>();
final goRouterConfig = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/onboarding',
  routes: [
    ShellRoute(
      navigatorKey: mainNavigatorKey,
      builder: (context, state, child) {
        return MainAppWrapper(child: child);
      },
      observers: [CustomObserver()],
      routes: [
        GoRoute(
          path: '/onboarding',
          name: 'onboarding',
          builder: (context, state) {
            return OnboardingScreen(
              onSkip: () {
                context.goNamed('login');
              },
            );
          },
        ),
        GoRoute(
          path: '/login',
          name: 'login',
          builder: (context, state) {
            return Scaffold(body: Container(color: Colors.red));
          },
        ),
        GoRoute(
          path: '/sign-up',
          name: 'signUp',
          builder: (context, state) {
            return Container();
          },
        ),
      ],
    ),
  ],
);

class CustomObserver extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    // AppEventBus().fire(UnfocusKeyboardEvent());
    super.didPop(route, previousRoute);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    print('Push new route');
    super.didPush(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    print('Push new route');
    super.didRemove(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    print('Push new route');
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }
}
