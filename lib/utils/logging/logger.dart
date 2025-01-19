import 'package:logger/logger.dart';

class TLoggerHelper {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(), // Customize the log format
    level: Level.debug, // Set log level to debug
  );

  // Log debug message
  static void debug(String message) {
    _logger.d(message);
  }

  // Log info message
  static void info(String message) {
    _logger.i(message);
  }

  // Log warning message
  static void warning(String message) {
    _logger.w(message);
  }

  // Log error message with optional error details and stack trace
  static void error(String message, [dynamic error]) {
    _logger.e(message, error: error, stackTrace: StackTrace.current);
  }
}
