import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smart_learning_assistant/core/routes/go_router_provider.dart';
import 'package:smart_learning_assistant/core/service/theme/theme.dart';
import 'package:smart_learning_assistant/core/service/theme/theme_controller.dart';

class SmartLearningAssistantApp extends HookConsumerWidget {
  const SmartLearningAssistantApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    final themeMode = ref.watch(themeModeProvider);

    // Hỗ trợ thêm dark green theme
    ThemeData? customTheme;
    ThemeMode materialThemeMode;
    if (themeMode == VsThemeMode.light) {
      materialThemeMode = ThemeMode.light;
    } else if (themeMode == VsThemeMode.dark) {
      materialThemeMode = ThemeMode.dark;
    } else if (themeMode.toString() == 'VsThemeMode.darkGreen') {
      // Nếu có darkGreen, dùng theme custom
      materialThemeMode = ThemeMode.dark;
      customTheme = darkGreenTheme;
    } else {
      materialThemeMode = ThemeMode.system;
    }

    return MaterialApp.router(
      title: 'Smart Learning Assistant',
      theme: customTheme ?? lightTheme,
      darkTheme: customTheme ?? darkTheme,
      themeMode: materialThemeMode,
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
