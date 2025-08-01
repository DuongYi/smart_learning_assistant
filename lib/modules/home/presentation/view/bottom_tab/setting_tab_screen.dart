import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smart_learning_assistant/core/routes/routes.dart';
import 'package:smart_learning_assistant/core/service/theme/theme.dart';
import 'package:smart_learning_assistant/core/service/theme/theme_controller.dart';
import 'package:smart_learning_assistant/modules/home/presentation/controller/home_controller.dart';
import 'package:smart_learning_assistant/modules/home/presentation/widget/appbar_home_widget.dart';

class SettingTabScreen extends ConsumerWidget {
  const SettingTabScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeController = ref.watch(homeControllerProvider.notifier);

    return Stack(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // AppBar
              const AppBarHomeWidget(),
              // Nâng cấp UI đổi theme
              const SizedBox(height: 16),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 32),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
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
                                ref
                                    .read(themeModeProvider.notifier)
                                    .setTheme(mode);
                              }
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 24),
              (ref.watch(homeControllerProvider).isLoading)
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () async {
                        await homeController.fetchUserData();
                        final state = ref.watch(homeControllerProvider);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'User data fetched: ${state.userDataList}',
                            ),
                          ),
                        );
                      },
                      child: const Text('Fetch User Data'),
                    ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                icon: const Icon(Icons.smart_toy),
                label: const Text('Smart Assistant'),
                onPressed: () {
                  context.push(Routes.smartAssistant);
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                icon: const Icon(Icons.ac_unit_sharp),
                label: const Text('Dummy Screen'),
                onPressed: () {
                  context.push(Routes.dummyScreen);
                },
              ),
            ],
          ),
        ),

        // Hiển thị nội dung tab đang chọn
      ],
    );
  }
}
