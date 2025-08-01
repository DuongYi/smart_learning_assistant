import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smart_learning_assistant/base/ui/base_home_screen.dart';
import 'package:smart_learning_assistant/modules/home/presentation/controller/home_controller.dart';
import 'package:smart_learning_assistant/modules/home/presentation/view/bottom_tab/home_tab_screen.dart';
import 'package:smart_learning_assistant/modules/home/presentation/view/bottom_tab/package_tab_screen.dart';
import 'package:smart_learning_assistant/modules/home/presentation/view/bottom_tab/setting_tab_screen.dart';
import 'package:smart_learning_assistant/modules/home/presentation/widget/bottom_navigation_widget.dart';

class HomeScreen extends BaseHomeScreen {
  const HomeScreen({super.key});

  @override
  String get title => 'Home Screen';

  @override
  Widget buildBody(BuildContext context, WidgetRef ref) {
    final homeTabIndex = ref.watch(homeTabProvider);

    final tabs = [
      const HomeTabScreen(),
      const PackageTabScreen(),
      const SettingTabScreen(),
    ];

    return Stack(
      children: [
        tabs[homeTabIndex], // Display the selected tab content
        // Your main content goes here
        Align(
          alignment: Alignment.bottomCenter,
          child: BottomNavigationGlasses(
            currentIndex: homeTabIndex,
            onTap: (value) {
              ref.read(homeTabProvider.notifier).state = value;
            },
          ),
        ),
      ],
    );
  }
}
