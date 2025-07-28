import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_learning_assistant/modules/home/data/response/user_response.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default(null) List<UserResponse>? userDataList,
  }) = _HomeState;
  // Add any additional methods or properties if needed

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
