import 'dart:io';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../repository/qa_repository.dart';
import '../state/qa_state.dart';
import '../../domain/service/chat_db_service.dart';

part 'qa_controller.g.dart';

@riverpod
class QAController extends _$QAController {
  @override
  QAState build() {
    _loadHistory();
    return const QAState();
  }

  Future<void> _loadHistory() async {
    final dbMessages = await ChatDBService().getMessages();
    final history = dbMessages
        .map(
          (msg) => QAChatMessage(
            text: msg['text'] as String,
            imagePath: msg['imagePath'] as String?,
            isUser: (msg['isUser'] as int) == 1,
          ),
        )
        .toList();
    state = state.copyWith(history: history);
  }

  Future<void> sendQuestion({required String question, File? image}) async {
    if (question.trim().isEmpty && image == null) return;
    state = state.copyWith(isLoading: true, error: null);
    try {
      final userMsg = QAChatMessage(
        text: question,
        imagePath: image?.path,
        isUser: true,
      );
      await ChatDBService().insertMessage(
        userMsg.text,
        userMsg.imagePath,
        userMsg.isUser,
      );
      final newHistory = List<QAChatMessage>.from(state.history)..add(userMsg);
      state = state.copyWith(history: newHistory);
      final response = await QARepository().sendQuestion(
        question: question,
        image: image,
      );

      final botMsg = QAChatMessage(text: response, isUser: false);
      await ChatDBService().insertMessage(botMsg.text, null, false);
      final updatedHistory = List<QAChatMessage>.from(state.history)
        ..add(botMsg);
      state = state.copyWith(history: updatedHistory, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  void resetError() {
    state = state.copyWith(error: null);
  }

  Future<void> clearHistory() async {
    await ChatDBService().clearMessages();
    state = state.copyWith(history: []);
  }
}
