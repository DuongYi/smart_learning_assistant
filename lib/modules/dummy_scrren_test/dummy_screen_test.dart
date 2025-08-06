import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_learning_assistant/base/widget/k_text.dart';
import 'package:smart_learning_assistant/core/routes/routes.dart';

class DummyScreenTest extends StatelessWidget {
  const DummyScreenTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Good\nmorning,\nJosephine",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              const Text(
                "Recent",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
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
              const Text(
                "Automation",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
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
                  Text(
                    "Trending prompt",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18),
                ],
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: const [
                  PromptChip(label: "#1 Graphic design"),
                  PromptChip(label: "#2 UX research"),
                  PromptChip(label: "#3 Math solver"),
                  PromptChip(label: "#4 Productivity to-do list"),
                ],
              ),
              const Spacer(),
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
        ),
      ),
    );
  }
}

class RecentChip extends StatelessWidget {
  final String label;
  const RecentChip({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.grey[300],
      labelStyle: const TextStyle(color: Colors.black),
    );
  }
}

class AutomationCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const AutomationCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 170,
      decoration: BoxDecoration(
        color: const Color.fromARGB(142, 209, 206, 206),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 28, color: Colors.white),
          const SizedBox(height: 10),
          KText(
            text: title,
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.white,
          ),
          const SizedBox(height: 4),
          KText(
            text: subtitle,
            fontWeight: FontWeight.normal,
            fontSize: 14,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class PromptChip extends StatelessWidget {
  final String label;
  const PromptChip({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.black,
      labelStyle: const TextStyle(color: Colors.white),
    );
  }
}
