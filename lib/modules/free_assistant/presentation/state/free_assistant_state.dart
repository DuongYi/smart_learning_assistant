import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_learning_assistant/modules/free_assistant/data/request/part_chat_dto.dart';
import 'package:smart_learning_assistant/modules/free_assistant/data/response/free_assistant_response.dart';
import 'package:smart_learning_assistant/modules/free_assistant/domain/model/chat_bot_model.dart';

part 'free_assistant_state.freezed.dart';

@freezed
@immutable
class FreeAssistantState with _$FreeAssistantState {
  const factory FreeAssistantState({
    @Default([]) List<PartChatDTO> listPartChat,
    FreeAssistantResponse? freeAssistantResponse,
    @Default(false) bool isLoading,
    @Default([]) List<ChatBotModel> history,
  }) = _FreeAssistantState;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
