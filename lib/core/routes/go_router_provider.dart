import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smart_learning_assistant/core/routes/routes.dart';
import 'package:smart_learning_assistant/modules/auth/login_screen.dart';
import 'package:smart_learning_assistant/modules/document/view/document_screen.dart';
import 'package:smart_learning_assistant/modules/home/presentation/view/home_screen.dart';
import 'package:smart_learning_assistant/modules/home/presentation/view/profile_view/setting_screen.dart';
import 'package:smart_learning_assistant/modules/smart_assistant/presentation/view/qa_screen.dart';
import 'package:smart_learning_assistant/modules/calculator/view/calculator_screen.dart';

// GoRouter provider using Riverpod
final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: Routes.login,
    routes: [
      GoRoute(
        path: Routes.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: Routes.home,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: Routes.smartAssistant,
        builder: (context, state) => const QAScreen(),
      ),
      // Calculator route
      GoRoute(
        path: Routes.calculatorScreen,
        builder: (context, state) => const CalculatorScreen(),
      ),
      // Profile and Settings routes
      GoRoute(
        path: Routes.settingScreen,
        builder: (context, state) => const SettingScreen(),
      ),

      // Document
      GoRoute(
        path: Routes.documentScreen,
        builder: (context, state) => const DocumentScreen(),
      ),
    ],
  );
});
