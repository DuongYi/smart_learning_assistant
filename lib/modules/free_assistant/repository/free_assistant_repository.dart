import 'package:smart_learning_assistant/modules/free_assistant/data/request/part_chat_dto.dart';
import 'package:smart_learning_assistant/modules/free_assistant/domain/service/free_assistant_service.dart';
import 'package:smart_learning_assistant/modules/free_assistant/repository/ifree_assistant_repository.dart';

class FreeAssistantRepository implements IFreeAssistantRepository {
  final FreeAssistantService _freeAssistantService;
  FreeAssistantRepository({FreeAssistantService? freeAssistantService})
    : _freeAssistantService = freeAssistantService ?? FreeAssistantService();

  @override
  Future<String> sendQuestion({
    required String question,
    required List<PartChatDTO> listPartChat,
  }) {
    return _freeAssistantService.sendQuestion(
      question: question,
      listPartChat: listPartChat,
    );
  }
}
