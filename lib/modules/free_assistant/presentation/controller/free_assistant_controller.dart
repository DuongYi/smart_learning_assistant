import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smart_learning_assistant/modules/free_assistant/data/request/part_chat_dto.dart';
import 'package:smart_learning_assistant/modules/free_assistant/domain/model/chat_bot_model.dart';
import 'package:smart_learning_assistant/modules/free_assistant/domain/service/free_assistant_db_service.dart';
import 'package:smart_learning_assistant/modules/free_assistant/presentation/state/free_assistant_state.dart';
import 'package:smart_learning_assistant/modules/free_assistant/repository/free_assistant_repository.dart';

part 'free_assistant_controller.g.dart';

@riverpod
class FreeAssistantController extends _$FreeAssistantController {
  final FreeAssistantDBService _freeAssistantDBService =
      FreeAssistantDBService();

  @override
  FreeAssistantState build() {
    _loadHistory();
    return FreeAssistantState();
  }

  Future<void> _loadHistory() async {
    final dbMessages = await FreeAssistantDBService().getMessages();
    final history = dbMessages
        .map(
          (msg) => ChatBotModel(
            question: msg['text'] as String,
            isUser: (msg['isUser'] as int) == 1,
          ),
        )
        .toList();
    state = state.copyWith(history: history);
  }

  Future<void> sendQuestion({required String question}) async {
    if (question.trim().isEmpty) return;

    state = state.copyWith(
      isLoading: true,
      listPartChat: <PartChatDTO>[
        ...state.listPartChat,
        PartChatDTO(question: question),
      ],
    );

    try {
      final userMsg = ChatBotModel(isUser: true, question: question);

      // Thêm câu trả lời vào dữ liệu cuộc trò truyện lưu trong DB
      final newHistory = List<ChatBotModel>.from(state.history)..add(userMsg);
      state = state.copyWith(history: newHistory);

      String response = await FreeAssistantRepository().sendQuestion(
        question: question,
        listPartChat: state.listPartChat,
      );

      final botMsg = ChatBotModel(isUser: false, question: response);
      await _freeAssistantDBService.insertMessage(botMsg.question, false);

      final updatedHistory = List<ChatBotModel>.from(state.history)
        ..add(botMsg);
      state = state.copyWith(history: updatedHistory, isLoading: false);

      Logger().i('response: $response');
      Logger().f('database111111: ${state.history}');
    } catch (e) {
      state = state.copyWith(isLoading: false);
      return;
    }
  }

  Future<void> clearHistory() async {
    await _freeAssistantDBService.clearMessages();
    state = state.copyWith(history: []);
  }
}
