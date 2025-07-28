import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:smart_learning_assistant/modules/home/application/home_service_provider.dart';
import 'package:smart_learning_assistant/modules/home/presentation/state/home_state.dart';

final homeControllerProvider = NotifierProvider<HomeController, HomeState>(
  HomeController.new,
);

class HomeController extends Notifier<HomeState> {
  @override
  HomeState build() {
    return HomeState();
  }

  Future<void> fetchUserData() async {
    state = state.copyWith(isLoading: true, errorMessage: '');

    try {
      final result = await ref.read(homeServiceProvider).getUserData();
      state = state.copyWith(userDataList: result, isLoading: false);

      Logger().w('[INFO] User data fetched successfully: $result');
    } catch (e) {
      state = state.copyWith(
        errorMessage: e.toString(),
        isLoading: false,
        userDataList: null,
      );
    }
  }
}
