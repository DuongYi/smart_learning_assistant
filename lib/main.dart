import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smart_learning_assistant/base/start_up/start_up_screen.dart';
import 'smart_learning_assistant_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ProviderScope(
      child: StartUpScreen(
        // This builder will be called after the startup logic is completed.
        builder: (context) => const SmartLearningAssistantApp(),
      ),
    ),
  );
}
