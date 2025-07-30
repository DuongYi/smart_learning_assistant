import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smart_learning_assistant/core/routes/routes.dart';
import 'package:smart_learning_assistant/modules/home/presentation/controller/home_controller.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // You can use the homeControllerProvider to access the HomeController
    final homeController = ref.watch(homeControllerProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                context.go(Routes.smartAssistant);
              },
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              icon: const Icon(Icons.ac_unit_sharp),
              label: const Text('Dummy Screen'),
              onPressed: () {
                context.go(Routes.dummyScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
