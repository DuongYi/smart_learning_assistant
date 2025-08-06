import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smart_learning_assistant/base/widget/k_text.dart';
import 'package:smart_learning_assistant/core/routes/routes.dart';
import 'package:smart_learning_assistant/core/service/theme/theme.dart';
import 'package:smart_learning_assistant/modules/dummy_scrren_test/dummy_screen_test.dart';
import 'package:smart_learning_assistant/modules/home/presentation/controller/home_controller.dart';
import 'package:smart_learning_assistant/modules/home/presentation/widget/appbar_home_widget.dart';

class StickyNoteCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> tags;
  final String time;
  final bool isFavorite;
  final VoidCallback? onTap;
  final Color color;
  final IconData? icon;

  const StickyNoteCard({
    super.key,
    required this.title,
    required this.description,
    required this.tags,
    required this.time,
    this.isFavorite = false,
    this.onTap,
    this.color = const Color(0xFFEDFBC1),
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 18, bottom: 12),
        padding: const EdgeInsets.all(18),
        width: 240,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(28),
            topRight: const Radius.circular(18),
            bottomLeft: const Radius.circular(28),
            bottomRight: const Radius.circular(28),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 16,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                if (icon != null) Icon(icon, color: Colors.black54, size: 20),
                if (icon != null) const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                if (isFavorite)
                  Icon(Icons.favorite, color: Colors.yellow[700], size: 20),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 14, color: Colors.black87),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 6,
              children: tags
                  .map(
                    (tag) => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.08),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        tag,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  time,
                  style: const TextStyle(fontSize: 13, color: Colors.black54),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.12),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 18,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HomeTabScreen extends ConsumerWidget {
  const HomeTabScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeController = ref.watch(homeControllerProvider.notifier);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // AppBar
                AppBarHomeWidget(),

                SizedBox(height: 8),

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
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFFFFFFFF).tone(50),
                          blurRadius: 24,
                          spreadRadius: 2,
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

                // Hiển thị nội dung tab đang chọn
                KText(
                  text: "Recent",
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 10,
                  children: const [
                    RecentChip(label: "Job finder UX"),
                    RecentChip(label: "Graphic design copy"),
                    RecentChip(label: "Food planner"),
                  ],
                ),
                const SizedBox(height: 25),
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
                        title: "Bussiness",
                        subtitle: "Based on your morning routine",
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: AutomationCard(
                        icon: Icons.fitness_center,
                        title: "Interviewing",
                        subtitle:
                            "AI writing function with advanced input for personlized",
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
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 18,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: Wrap(
                    spacing: 10,

                    children: const [
                      PromptChip(label: "#1 Graphic design"),
                      PromptChip(label: "#2 UX research"),
                      PromptChip(label: "#3 Math solver"),
                      PromptChip(label: "#4 Productivity to-do list"),
                    ],
                  ),
                ),

                // const Spacer(),
                const SizedBox(height: 20),
              ],
            ),
          ),

          const SizedBox(height: 12),
          SizedBox(
            height: 260,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                StickyNoteCard(
                  title: 'Instagram Content Plan for Begginer',
                  description:
                      'in publishing and graphic design, lorem ipsum is a placeholder text. In publishing and graphic design, lorem ipsum is a placeholder text.',
                  tags: ['#instagram', '#work'],
                  time: 'Today at 6:30pm',
                  icon: Icons.camera_alt,
                  isFavorite: true,
                  color: const Color(0xFFEDFBC1),
                ),
                StickyNoteCard(
                  title: 'Some for Ux designer',
                  description:
                      'in publishing and graphic design, lorem ipsum is a placeholder text. In publishing and graphic design, lorem ipsum is a placeholder text.',
                  tags: ['#rules', '#inspiration'],
                  time: 'Today at 6:30pm',
                  icon: Icons.design_services,
                  color: const Color(0xFF23262F),
                ),
                StickyNoteCard(
                  title: 'AI Content Plan',
                  description:
                      'AI can help you generate content ideas and schedule posts easily.',
                  tags: ['#ai', '#content'],
                  time: 'Tomorrow at 9:00am',
                  icon: Icons.smart_toy,
                  color: const Color(0xFFD1F2EB),
                ),
              ],
            ),
          ),

          // ...rest of your home tab content...
        ],
      ),
    );
  }
}
