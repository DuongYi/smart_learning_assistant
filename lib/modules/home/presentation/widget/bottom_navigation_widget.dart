import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_learning_assistant/core/service/theme/theme.dart';

class BottomNavigationGlasses extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const BottomNavigationGlasses({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final items = [
      _NavItem(icon: CupertinoIcons.home, label: 'Trang chủ'),
      _NavItem(icon: CupertinoIcons.square_stack_3d_up_fill, label: 'Gói cước'),
      _NavItem(icon: CupertinoIcons.settings, label: 'Cài đặt'),
    ];
    return Padding(
      padding: const EdgeInsets.only(bottom: 24, left: 24, right: 24),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.tone(9),
              blurRadius: 16,
              spreadRadius: 2,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(1000),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface.tone(5),
              borderRadius: BorderRadius.circular(1000),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(items.length, (i) {
                final selected = i == currentIndex;
                return GestureDetector(
                  onTap: () => onTap(i),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.ease,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(),
                    child: TweenAnimationBuilder<double>(
                      tween: Tween<double>(
                        begin: selected ? 1 : 1.0,
                        end: selected ? 1 : 1.0,
                      ),
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.ease,
                      builder: (context, scale, child) {
                        return AnimatedOpacity(
                          duration: const Duration(milliseconds: 250),
                          opacity: selected ? 1.0 : 0.7,
                          child: Transform.scale(scale: scale, child: child),
                        );
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            items[i].icon,
                            color: selected
                                ? Theme.of(
                                    context,
                                  ).colorScheme.surface.tone(100)
                                : Theme.of(
                                    context,
                                  ).textTheme.bodySmall?.color?.tone(75),
                            size: 24,
                          ),
                          const SizedBox(height: 8),
                          // Nếu muốn có label dưới icon, bỏ comment dòng dưới
                          Text(
                            items[i].label,
                            style: TextStyle(
                              fontSize: 12,
                              color: selected
                                  ? Theme.of(
                                      context,
                                    ).colorScheme.surface.tone(100)
                                  : Theme.of(
                                      context,
                                    ).textTheme.bodySmall?.color?.tone(75),
                              fontWeight: selected
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}

class _NavItem {
  final IconData icon;
  final String label;
  const _NavItem({required this.icon, required this.label});
}
