import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smart_learning_assistant/base/widget/k_text.dart';
import 'package:smart_learning_assistant/core/routes/routes.dart';
import 'package:smart_learning_assistant/modules/dummy_scrren_test/dummy_screen_test.dart';
import 'package:smart_learning_assistant/modules/home/presentation/controller/home_controller.dart';
import 'package:smart_learning_assistant/modules/home/presentation/widget/appbar_home_widget.dart';

class HomeTabScreen extends ConsumerWidget {
  const HomeTabScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeController = ref.watch(homeControllerProvider.notifier);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // AppBar
          AppBarHomeWidget(),

          // Hiển thị nội dung tab đang chọn
          KText(
            text: "Recent",
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 10),
          // Expanded(
          //   child: Row(
          //     children: const [
          //       RecentChip(label: "Job finder UX"),
          //       RecentChip(label: "Graphic design copy"),
          //       RecentChip(label: "Food planner"),
          //     ],
          //   ),
          // ),
          // const SizedBox(height: 25),
          KText(
            text: "Automation",
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 15),
          Row(
            children: const [
              Expanded(
                child: AutomationCard(
                  icon: Icons.shopping_bag,
                  title: "Today’s food and\nbeverages shopping",
                  subtitle: "Based on your morning routine",
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: AutomationCard(
                  icon: Icons.fitness_center,
                  title: "Home workout ideas\nfor body shaping",
                  subtitle: "Based on your morning routine",
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              KText(
                text: "Trending prompt",
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18),
            ],
          ),
          const SizedBox(height: 10),
          // Wrap(
          //   spacing: 10,
          //   runSpacing: 10,
          //   children: const [
          //     PromptChip(label: "#1 Graphic design"),
          //     PromptChip(label: "#2 UX research"),
          //     PromptChip(label: "#3 Math solver"),
          //     PromptChip(label: "#4 Productivity to-do list"),
          //   ],
          // ),
          // const Spacer(),
          GestureDetector(
            onTap: () {
              // Handle new chat creation
              context.push(Routes.smartAssistant);
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withValues(alpha: 0.25),
                    blurRadius: 24,
                    spreadRadius: 2,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  "+  New chat",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
