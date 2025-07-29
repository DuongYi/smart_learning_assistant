import 'package:freezed_annotation/freezed_annotation.dart';

part 'qa_state.freezed.dart';

@freezed
class QAChatMessage with _$QAChatMessage {
  const factory QAChatMessage({
    required String text,
    String? imagePath,
    required bool isUser,
  }) = _QAChatMessage;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

@freezed
class QAState with _$QAState {
  const factory QAState({
    @Default([]) List<QAChatMessage> history,
    @Default(false) bool isLoading,
    String? error,
  }) = _QAState;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
