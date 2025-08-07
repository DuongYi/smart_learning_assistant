import 'package:flutter_riverpod/legacy.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorState {
  final String expression;
  final String result;
  const CalculatorState({this.expression = '', this.result = ''});

  CalculatorState copyWith({String? expression, String? result}) =>
      CalculatorState(
        expression: expression ?? this.expression,
        result: result ?? this.result,
      );
}

class CalculatorNotifier extends StateNotifier<CalculatorState> {
  CalculatorNotifier() : super(const CalculatorState());

  void input(String value) {
    if (value == 'C') {
      state = const CalculatorState();
    } else if (value == '=') {
      try {
        state = state.copyWith(result: _calculate(state.expression));
      } catch (e) {
        state = state.copyWith(result: 'Error');
      }
    } else {
      state = state.copyWith(expression: state.expression + value);
    }
  }

  String _calculate(String expr) {
    expr = expr.replaceAll('×', '*').replaceAll('÷', '/');
    try {
      Parser p = Parser();
      Expression exp = p.parse(expr);
      double eval = exp.evaluate(EvaluationType.REAL, ContextModel());
      if (eval.isNaN) return 'Error';
      // Hiển thị số nguyên nếu không có phần thập phân
      if (eval == eval.roundToDouble()) {
        return eval.toInt().toString();
      }
      return eval.toString();
    } catch (e) {
      return 'Error';
    }
  }
}

final calculatorProvider =
    StateNotifierProvider<CalculatorNotifier, CalculatorState>(
      (ref) => CalculatorNotifier(),
    );
