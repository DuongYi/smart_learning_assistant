import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StartUpError extends ConsumerWidget {
  final Object error;
  final StackTrace? stackTrace;
  const StartUpError({super.key, required this.error, this.stackTrace});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(child: Center(child: Text(error.toString())));
  }
}
