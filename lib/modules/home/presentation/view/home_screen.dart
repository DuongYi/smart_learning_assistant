import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smart_learning_assistant/modules/home/presentation/controller/home_controller.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // You can use the homeControllerProvider to access the HomeController
    final homeController = ref.watch(homeControllerProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: (ref.watch(homeControllerProvider).isLoading)
            ? const CircularProgressIndicator()
            : ElevatedButton(
                onPressed: () async {
                  // Call the fetchUserData method from HomeController
                  await homeController.fetchUserData();
                  // You can also access the state if needed
                  final state = ref.watch(homeControllerProvider);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('User data fetched: ${state.userDataList}'),
                    ),
                  );
                },
                child: const Text('Fetch User Data'),
              ),
      ),
    );
  }
}
