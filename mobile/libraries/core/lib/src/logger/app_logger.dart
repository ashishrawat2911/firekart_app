import 'package:logger/logger.dart';

var _logger = Logger();
enum LogType {
  verbose,
  debug,
  info,
  warning,
  error,
  wtf,
  nothing,
}

class AppLogger {
  static void log(
    dynamic message, {
    LogType logType = LogType.debug,
    dynamic error,
    StackTrace? stackTrace,
  }) {
    _logger.log(_logTypeToLogLevel(logType), message, error, stackTrace);
  }

  static void errorLog(
    dynamic message, {
    dynamic error,
    StackTrace? stackTrace,
  }) {
    _logger.log(Level.error, message, error, stackTrace);
  }

  static Level _logTypeToLogLevel(LogType logType) {
    switch (logType) {
      case LogType.verbose:
        return Level.verbose;

      case LogType.debug:
        return Level.debug;
      case LogType.info:
        return Level.info;

      case LogType.warning:
        return Level.warning;

      case LogType.error:
        return Level.error;

      case LogType.wtf:
        return Level.wtf;

      case LogType.nothing:
        return Level.nothing;
    }
  }
}
