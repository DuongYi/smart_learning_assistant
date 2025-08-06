import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smart_learning_assistant/base/widget/k_text.dart';

class PackageTabScreen extends ConsumerWidget {
  const PackageTabScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Color accent = const Color(0xFFB6FFB0);
    final Color card = const Color.fromARGB(255, 102, 102, 102);
    final Color selected = accent.withOpacity(0.18);

    final TextStyle planStyle = TextStyle(
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    );

    final TextStyle priceStyle = TextStyle(fontSize: 15, color: Colors.white70);

    int selectedIndex = 1;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.star, color: accent, size: 28),
                    const SizedBox(width: 8),
                    Text(
                      'EduXMate',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const Spacer(),
                    Icon(Icons.close, color: Colors.white, size: 24),
                  ],
                ),
                const SizedBox(height: 12),
                Divider(color: Colors.white24, thickness: 1.2),
                const SizedBox(height: 12),
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Nâng Cấp\n',
                          style: TextStyle(
                            fontFamily: 'SFPro',
                            fontSize: 44,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            letterSpacing: 1.2,
                          ),
                        ),
                        TextSpan(
                          text: 'lên gói Premium\n',
                          style: TextStyle(
                            fontFamily: 'SFPro',
                            fontSize: 44,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.2,
                            color: accent,
                            height: 1.4,
                          ),
                        ),
                        TextSpan(
                          text: 'hôm nay',
                          style: TextStyle(
                            fontFamily: 'SFPro',
                            fontSize: 44,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            letterSpacing: 1.2,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 18),
                KText(
                  text:
                      'Và tận hưởng toàn bộ tính năng cao cấp của ứng dụng EduXMate – trợ lý học tập thông minh dành cho bạn!',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                const SizedBox(height: 8),
                KText(
                  text:
                      '• Trải nghiệm học tập liền mạch, không bị làm phiền bởi quảng cáo.\n• Đặt bao nhiêu câu hỏi tùy thích, không giới hạn số lần tương tác.\n• Hỗ trợ trả lời cả những câu hỏi dài và chuyên sâu, giúp bạn hiểu bài kỹ hơn.',
                  fontSize: 14,
                  color: Colors.white70,
                  lineHeight: 1.7,
                ),

                const SizedBox(height: 12),
                Divider(color: Colors.white24, thickness: 1.2, height: 32),
                const SizedBox(height: 12),

                _PlanOption(
                  title: 'WEEKLY',
                  price: '5.000 VNĐ/ Tuần',
                  selected: selectedIndex == 0,
                  onTap: () {},
                  cardColor: card,
                  selectedColor: selected,
                  accent: accent,
                  planStyle: planStyle,
                  priceStyle: priceStyle,
                ),
                const SizedBox(height: 12),
                _PlanOption(
                  title: 'MONTHLY',
                  price: '10.000 VNĐ/ Tháng',
                  selected: selectedIndex == 1,
                  onTap: () {},
                  cardColor: card,
                  selectedColor: selected,
                  accent: accent,
                  planStyle: planStyle,
                  priceStyle: priceStyle,
                ),
                const SizedBox(height: 12),
                _PlanOption(
                  title: 'Trọn đời',
                  price: '150.000 VNĐ/ Trọn đời',
                  selected: selectedIndex == 2,
                  onTap: () {},
                  cardColor: card,
                  selectedColor: selected,
                  accent: accent,
                  planStyle: planStyle,
                  priceStyle: priceStyle,
                ),

                const SizedBox(height: 16),
              ],
            ),
          ),

          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(
                    255,
                    250,
                    250,
                    250,
                  ).withValues(alpha: 0.4),
                  blurRadius: 24,
                  spreadRadius: 2,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
              onPressed: () {},
              child: KText(
                text: 'Tiếp tục',
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          const SizedBox(height: 96),
        ],
      ),
    );
  }
}

class _PlanOption extends StatelessWidget {
  final String title;
  final String price;
  final bool selected;
  final VoidCallback onTap;
  final Color cardColor;
  final Color selectedColor;
  final Color accent;
  final TextStyle planStyle;
  final TextStyle priceStyle;

  const _PlanOption({
    required this.title,
    required this.price,
    required this.selected,
    required this.onTap,
    required this.cardColor,
    required this.selectedColor,
    required this.accent,
    required this.planStyle,
    required this.priceStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
        decoration: BoxDecoration(
          color: selected ? selectedColor : cardColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: planStyle.copyWith(
                      color: selected ? accent : Colors.white,
                      fontFamily: 'SFPro',
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(price, style: priceStyle),
                ],
              ),
            ),
            if (selected)
              Container(
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                  color: accent,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.check, color: Colors.black, size: 16),
              ),
          ],
        ),
      ),
    );
  }
}
