// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppTranslate {
  AppTranslate();

  static AppTranslate? _current;

  static AppTranslate get current {
    assert(_current != null,
        'No instance of AppTranslate was loaded. Try to initialize the AppTranslate delegate before accessing AppTranslate.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppTranslate> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppTranslate();
      AppTranslate._current = instance;

      return instance;
    });
  }

  static AppTranslate of(BuildContext context) {
    final instance = AppTranslate.maybeOf(context);
    assert(instance != null,
        'No instance of AppTranslate present in the widget tree. Did you add AppTranslate.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppTranslate? maybeOf(BuildContext context) {
    return Localizations.of<AppTranslate>(context, AppTranslate);
  }

  /// `Todyapp`
  String get appName {
    return Intl.message(
      'Todyapp',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get Continue {
    return Intl.message(
      'Continue',
      name: 'Continue',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get emailAddress {
    return Intl.message(
      'Email Address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `or continue with`
  String get orContinueWith {
    return Intl.message(
      'or continue with',
      name: 'orContinueWith',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Todyapp`
  String get onboarding1Title {
    return Intl.message(
      'Todyapp',
      name: 'onboarding1Title',
      desc: '',
      args: [],
    );
  }

  /// `The best to do list application for you.`
  String get onboarding1Subtitle {
    return Intl.message(
      'The best to do list application for you.',
      name: 'onboarding1Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Your convenience in making a todo list`
  String get onboarding2Title {
    return Intl.message(
      'Your convenience in making a todo list',
      name: 'onboarding2Title',
      desc: '',
      args: [],
    );
  }

  /// `Here's a mobile platform that helps you create tasks or to-do lists to assist you in every job easier and faster.`
  String get onboarding2Subtitle {
    return Intl.message(
      'Here\'s a mobile platform that helps you create tasks or to-do lists to assist you in every job easier and faster.',
      name: 'onboarding2Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Find the practicality in making your todo list`
  String get onboarding3Title {
    return Intl.message(
      'Find the practicality in making your todo list',
      name: 'onboarding3Title',
      desc: '',
      args: [],
    );
  }

  /// `Easy-to-understand user interface that makes you more comfortable when you want to create tasks or to-do lists. Todyapp can also improve productivity.`
  String get onboarding3Subtitle {
    return Intl.message(
      'Easy-to-understand user interface that makes you more comfortable when you want to create tasks or to-do lists. Todyapp can also improve productivity.',
      name: 'onboarding3Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Todyapp`
  String get createAccountTitle {
    return Intl.message(
      'Welcome to Todyapp',
      name: 'createAccountTitle',
      desc: '',
      args: [],
    );
  }

  /// `Continue with email`
  String get createAccountSubtitle {
    return Intl.message(
      'Continue with email',
      name: 'createAccountSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Facebook`
  String get createAccountFacebook {
    return Intl.message(
      'Facebook',
      name: 'createAccountFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Google`
  String get createAccountGoogle {
    return Intl.message(
      'Google',
      name: 'createAccountGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back!`
  String get loginTitle {
    return Intl.message(
      'Welcome Back!',
      name: 'loginTitle',
      desc: '',
      args: [],
    );
  }

  /// `Your work faster and structured with Todyapp`
  String get loginSubtitle {
    return Intl.message(
      'Your work faster and structured with Todyapp',
      name: 'loginSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get loginButton {
    return Intl.message(
      'Next',
      name: 'loginButton',
      desc: '',
      args: [],
    );
  }

  /// `Create account`
  String get signUpTitle {
    return Intl.message(
      'Create account',
      name: 'signUpTitle',
      desc: '',
      args: [],
    );
  }

  /// `Create your account and feel the benefits`
  String get signUpSubtitle {
    return Intl.message(
      'Create your account and feel the benefits',
      name: 'signUpSubtitle',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppTranslate> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppTranslate> load(Locale locale) => AppTranslate.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
