// logger_provider.dart
// ignore_for_file: deprecated_member_use

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:logger/logger.dart';

part 'logger_provider.g.dart';

@riverpod
Logger logger(Ref ref) {
  // You can customize the logger here, e.g., set log level, add filters, etc.
  final log = Logger(
    printer: PrettyPrinter(
      methodCount: 0, // No method count
      errorMethodCount: 5, // Show 5 error methods
      printTime: true, // Print time in logs
      colors: true, // Use colors in logs
    ),
  );

  return log;
}
