import 'package:auth/auth.dart';
import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    AppInitializer.init(context);
    // return MaterialApp.router(
    //   title: 'TodyList',
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //   ),
    //   localizationsDelegates: [
    //     AppTranslate.delegate,
    //     GlobalMaterialLocalizations.delegate,
    //     GlobalWidgetsLocalizations.delegate,
    //     GlobalCupertinoLocalizations.delegate,
    //   ],
    //   supportedLocales: AppTranslate.delegate.supportedLocales,
    //   locale: Locale('en'),
    //   routerConfig: goRouterConfig,
    // );
    return MaterialApp(
      title: 'TodyList',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      localizationsDelegates: [
        AppTranslate.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppTranslate.delegate.supportedLocales,
      locale: Locale('en'),
      home: OnboardingStep1Screen(),
    );
  }
}
