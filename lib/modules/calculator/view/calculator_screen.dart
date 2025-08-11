import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:smart_learning_assistant/base/widget/k_text.dart';

import 'package:smart_learning_assistant/modules/calculator/controller/calculator_controller.dart';
import 'package:smart_learning_assistant/base/ui/base_page_screen.dart';

final showAdvancedProvider = StateProvider<bool>((ref) => true);

class CalculatorScreen extends BasePageScreen {
  const CalculatorScreen({super.key});

  @override
  String get title => 'Máy tính';

  @override
  bool get showBack => true;

  @override
  Widget buildBody(BuildContext context, WidgetRef ref) {
    final state = ref.watch(calculatorProvider);
    final notifier = ref.read(calculatorProvider.notifier);
    final advancedButtons = [
      ['sin', 'cos', 'tan', '^', '√'],
      ['(', ')', 'log', 'ln', '%'],
    ];
    final basicButtons = [
      ['B', '⌫', 'C', '÷'],
      ['7', '8', '9', 'x'],
      ['4', '5', '6', '-'],
      ['1', '2', '3', '+'],
      ['+/-', '0', '.', '='],
    ];

    final showAdvanced = ref.watch(showAdvancedProvider);
    return SafeArea(
      child: Column(
        children: [
          // Hiển thị biểu thức và kết quả
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.transparent,
              padding: const EdgeInsets.all(24),
              alignment: Alignment.bottomRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    state.expression,
                    style: const TextStyle(color: Colors.white70, fontSize: 28),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    state.result,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Menu nhỏ các nút nâng cao
          if (showAdvanced)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Column(
                children: advancedButtons
                    .map(
                      (row) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: row
                            .map(
                              (btn) => _buildButton(
                                context,
                                btn,
                                notifier,
                                isSmall: true,
                              ),
                            )
                            .toList(),
                      ),
                    )
                    .toList(),
              ),
            ),
          // Bàn phím số cơ bản
          ...basicButtons.map(
            (row) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: row
                  .map((btn) => _buildButton(context, btn, notifier))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(
    BuildContext context,
    String value,
    CalculatorNotifier notifier, {
    bool isSmall = false,
  }) {
    if (value.isEmpty) {
      return SizedBox(width: isSmall ? 50 : 70, height: isSmall ? 50 : 70);
    }
    final isOperator =
        '+-×÷=^√logln%'.contains(value) ||
        value == 'sin' ||
        value == 'cos' ||
        value == 'tan';
    return Padding(
      padding: EdgeInsets.all(isSmall ? 6.0 : 8.0),
      child: SizedBox(
        width: isSmall ? 56 : 70,
        height: isSmall ? 56 : 70,
        child: Container(
          decoration: BoxDecoration(
            color: isOperator ? Colors.deepOrange : Colors.grey[800],
            borderRadius: isSmall
                ? BorderRadius.circular(12)
                : BorderRadius.circular(50),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: isSmall
                  ? BorderRadius.circular(12)
                  : BorderRadius.circular(50),
              onTap: () {
                final contextRef = ProviderScope.containerOf(
                  context,
                  listen: false,
                );
                if (value == 'B') {
                  final show = contextRef.read(showAdvancedProvider);
                  contextRef.read(showAdvancedProvider.notifier).state = !show;
                } else if (value == '+/-') {
                  notifier.input(value);
                } else {
                  notifier.input(value);
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: isSmall
                      ? BorderRadius.circular(12)
                      : BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                alignment: Alignment.center,
                child: KText(
                  text: value,
                  color: Colors.white,
                  fontSize: isSmall ? 16 : 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
