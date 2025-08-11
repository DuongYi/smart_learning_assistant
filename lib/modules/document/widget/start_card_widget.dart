import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smart_learning_assistant/base/widget/k_text.dart';

class StartCardWidget extends ConsumerWidget {
  const StartCardWidget({
    super.key,
    required this.value,
    required this.label,
    required this.color,
    this.subtitle,
  });

  final String value;
  final String label;
  final Color color;
  final String? subtitle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 100,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      decoration: BoxDecoration(
        color: color.withOpacity(0.08),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.folder, color: color, size: 20),
              const SizedBox(width: 6),
              KText(
                text: value,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: color,
              ),
            ],
          ),
          const SizedBox(height: 6),
          KText(
            text: label,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 13,
          ),
          if (subtitle != null)
            KText(text: subtitle, color: Colors.grey, fontSize: 11),
        ],
      ),
    );
  }
}
