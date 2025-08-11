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
    if (value == '+/-') {
      // Đổi dấu số cuối cùng trong biểu thức
      String exp = state.expression;
      final regex = RegExp(r'([\d.]+)(?!.*[\d.])');
      final match = regex.firstMatch(exp);
      if (match != null) {
        String number = match.group(0)!;
        int start = match.start;
        int end = match.end;
        if (number.startsWith('-')) {
          // Nếu đã âm thì bỏ dấu âm
          exp = exp.replaceRange(start, end, number.substring(1));
        } else {
          // Nếu dương thì thêm dấu âm
          exp = exp.replaceRange(start, end, '-$number');
        }
        state = state.copyWith(expression: exp);
      }
      return;
    }
    if (value == '⌫') {
      if (state.expression.isNotEmpty) {
        state = state.copyWith(
          expression: state.expression.substring(
            0,
            state.expression.length - 1,
          ),
        );
      }
      return;
    }
    if (value == 'C') {
      state = const CalculatorState();
    } else if (value == '=') {
      try {
        state = state.copyWith(result: _calculate(state.expression));
      } catch (e) {
        state = state.copyWith(result: 'Error');
      }
    } else if (value == '√') {
      state = state.copyWith(expression: '${state.expression}sqrt(');
    } else if (value == '^') {
      state = state.copyWith(expression: '${state.expression}^');
    } else if (value == 'log') {
      state = state.copyWith(expression: '${state.expression}log(');
    } else if (value == 'ln') {
      state = state.copyWith(expression: '${state.expression}ln(');
    } else if (value == 'sin' || value == 'cos' || value == 'tan') {
      state = state.copyWith(expression: '${state.expression}$value(');
    } else if (value == '%') {
      state = state.copyWith(expression: '${state.expression}/100');
    } else {
      state = state.copyWith(expression: state.expression + value);
    }
  }

  String _calculate(String expr) {
    expr = expr.replaceAll('×', '*').replaceAll('÷', '/');
    // math_expressions hỗ trợ các hàm: sin, cos, tan, sqrt, log, ln, ^, ngoặc, % (dùng /100)
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
