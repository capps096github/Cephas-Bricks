// ignore_for_file: avoid_print, constant_identifier_names, public_member_api_docs
import 'package:logger/logger.dart';

import 'package:flutter/foundation.dart';


/// this function is responsible for printtering the text on the screen
void printer(
  Object? object, {
  bool isDebug = true,
  bool isError = false,
  bool isSuccess = false,
}) {
  /// print the object
  if (kDebugMode) {
    if (isDebug) {
      AppPrinter.printter(object);
    } else if (isError) {
      AppPrinter.printError(object);
    } else if (isSuccess) {
      AppPrinter.printSuccess(object);
    } else {
      print(object);
    }
  }
}

/// this class is responsible for printing the text on the screen with color
class AppPrinter {
/// logger
  static final logger = Logger(
    printer: PrettyPrinter(
        methodCount: 2, // Number of method calls to be displayed
        errorMethodCount: 8, // Number of method calls if stacktrace is provided
        lineLength: 120, // Width of the output
        colors: true, // Colorful log messages
        printEmojis: true, // Print an emoji for each log message
        printTime: false // Should each log print contain a timestamp
        ),
  );

  /// prints the string with a color specified by the user
  static void printError(Object? text) {
    logger.e("ERROR:", error: text.toString());
  }

  /// this is for printing without a new line
  static void printter(Object? text) {
    logger.w(text.toString());
  }

  /// this is for printing without a new line
  static void printSuccess(Object? text) {
    logger.i(text.toString());
  }
}
