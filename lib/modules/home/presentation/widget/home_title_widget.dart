import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smart_learning_assistant/base/widget/k_text.dart';

class HomeTitleWidget extends ConsumerWidget {
  const HomeTitleWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        KText(
          text: title,
          fontSize: 22,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Icon(
            CupertinoIcons.arrow_right,
            color: Colors.black,
            size: 18,
          ),
        ),
      ],
    );
  }
}
