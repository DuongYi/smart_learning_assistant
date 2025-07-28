import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smart_learning_assistant/core/routes/go_router_provider.dart';

part 'smart_learning_assistant_app.g.dart';

@riverpod
String helloWorld(Ref ref) {
  return 'Hello world';
}

class SmartLearningAssistantApp extends HookConsumerWidget {
  const SmartLearningAssistantApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);

    return MaterialApp.router(
      title: 'Smart Learning Assistant',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
