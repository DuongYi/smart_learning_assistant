import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:smart_learning_assistant/modules/calculator/controller/calculator_controller.dart';
import 'package:smart_learning_assistant/base/ui/base_page_screen.dart';

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
    final buttons = [
      ['7', '8', '9', '÷'],
      ['4', '5', '6', '×'],
      ['1', '2', '3', '-'],
      ['0', '.', 'C', '+'],
      ['='],
    ];

    return SafeArea(
      child: Column(
        children: [
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
          ...buttons.map(
            (row) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: row.map((btn) => _buildButton(btn, notifier)).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String value, CalculatorNotifier notifier) {
    final isOperator = '+-×÷='.contains(value);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: isOperator ? Colors.deepPurple : Colors.grey[850],
            foregroundColor: Colors.white,
            shape: const CircleBorder(),
            elevation: 2,
          ),
          onPressed: () => notifier.input(value),
          child: Text(
            value,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
