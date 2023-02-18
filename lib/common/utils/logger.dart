import 'dart:io';

import 'package:logger/logger.dart';

class Log {
  /// use this instance when you want to have the location of your log call
  /// f.e: Log.instance.i('your log')
  static final instance = Logger(
    printer: PrettyPrinter(
      methodCount: 1,
      lineLength: 100,
      colors: !Platform.isIOS,
    ),
  );

  static final _instanceWithOutHeader = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      lineLength: 100,
      colors: !Platform.isIOS,
    ),
  );

  /// shorter version, use when the location of your log call is not important
  /// Log.e('...')
  static void e(String message) {
    return _instanceWithOutHeader.e(message);
  }

  /// shorter version, use when the location of your log call is not important
  /// Log.d('...')
  static void d(String message) {
    return _instanceWithOutHeader.d(message);
  }

  /// shorter version, use when the location of your log call is not important
  /// Log.i('...')
  static void i(String message) {
    return _instanceWithOutHeader.i(message);
  }

  /// shorter version, use when the location of your log call is not important
  /// Log.v('...')
  static void v(String message) {
    return _instanceWithOutHeader.v(message);
  }
}
