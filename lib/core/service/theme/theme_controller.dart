import 'package:hooks_riverpod/legacy.dart';
import 'package:smart_learning_assistant/core/service/theme/theme.dart';

final themeModeProvider = StateNotifierProvider<ThemeController, VsThemeMode>(
  (ref) => ThemeController(),
);

class ThemeController extends StateNotifier<VsThemeMode> {
  ThemeController() : super(VsThemeMode.system);

  void toggleTheme() {
    state = state == VsThemeMode.light ? VsThemeMode.dark : VsThemeMode.light;
  }

  void setTheme(VsThemeMode mode) {
    state = mode;
  }
}
