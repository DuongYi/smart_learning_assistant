import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smart_learning_assistant/base/ui/base_page_screen.dart';
import 'package:smart_learning_assistant/core/service/theme/theme.dart';
import 'package:smart_learning_assistant/core/service/theme/theme_controller.dart';

class SettingScreen extends BasePageScreen {
  const SettingScreen({super.key});

  @override
  String get title => 'Cài đặt';

  @override
  bool get showBack => true;

  @override
  bool get showSearch => false;

  @override
  void onBackPressed(BuildContext context, WidgetRef ref) {
    context.pop();
  }

  @override
  Widget buildBody(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const SizedBox(height: 24),
        // Đổi theme
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Consumer(
            builder: (context, ref, _) {
              final themeMode = ref.watch(themeModeProvider);
              return ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(
                  Icons.color_lens,
                  color: Theme.of(context).colorScheme.primary,
                ),
                title: const Text(
                  'Giao diện ứng dụng',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                trailing: DropdownButtonHideUnderline(
                  child: DropdownButton<VsThemeMode>(
                    value: themeMode,
                    borderRadius: BorderRadius.circular(12),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontWeight: FontWeight.w500,
                    ),
                    dropdownColor: Theme.of(context).cardColor,
                    items: const [
                      DropdownMenuItem(
                        value: VsThemeMode.system,
                        child: Row(
                          children: [
                            Icon(Icons.phone_android, size: 18),
                            SizedBox(width: 8),
                            Text('Theo hệ thống'),
                          ],
                        ),
                      ),
                      DropdownMenuItem(
                        value: VsThemeMode.light,
                        child: Row(
                          children: [
                            Icon(Icons.light_mode, size: 18),
                            SizedBox(width: 8),
                            Text('Sáng'),
                          ],
                        ),
                      ),
                      DropdownMenuItem(
                        value: VsThemeMode.dark,
                        child: Row(
                          children: [
                            Icon(Icons.dark_mode, size: 18),
                            SizedBox(width: 8),
                            Text('Tối'),
                          ],
                        ),
                      ),
                      DropdownMenuItem(
                        value: VsThemeMode.darkGreen,
                        child: Row(
                          children: [
                            Icon(Icons.nature, size: 18),
                            SizedBox(width: 8),
                            Text('Dark Green'),
                          ],
                        ),
                      ),
                    ],
                    onChanged: (mode) {
                      if (mode != null) {
                        ref.read(themeModeProvider.notifier).setTheme(mode);
                      }
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
