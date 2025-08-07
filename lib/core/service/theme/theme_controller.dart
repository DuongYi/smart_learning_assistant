import 'package:hooks_riverpod/legacy.dart';
import 'package:smart_learning_assistant/core/service/theme/theme.dart';

final themeModeProvider = StateNotifierProvider<ThemeController, VsThemeMode>(
  (ref) => ThemeController(),
);

class ThemeController extends StateNotifier<VsThemeMode> {
  ThemeController() : super(VsThemeMode.dark);

  void toggleTheme() {
    state = state == VsThemeMode.dark ? VsThemeMode.light : VsThemeMode.dark;
  }

  void setTheme(VsThemeMode mode) {
    state = mode;
  }
}
