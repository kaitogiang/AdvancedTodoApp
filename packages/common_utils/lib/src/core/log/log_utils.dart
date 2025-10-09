import 'package:logger/logger.dart';

class LogInfo {
  static void log(String message) => Logger().i(message);
}

class LogDebug {
  static void log(String message) => Logger().d(message);
}

class LogWarning {
  static void log(String message) => Logger().w(message);
}

class LogError {
  static void log(String message) => Logger().e(message);
}

class LogFatal {
  static void log(String message) => Logger().f(message);
}
