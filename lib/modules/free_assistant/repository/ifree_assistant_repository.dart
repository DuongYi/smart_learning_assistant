import 'package:smart_learning_assistant/modules/free_assistant/data/request/part_chat_dto.dart';

abstract class IFreeAssistantRepository {
  Future<String> sendQuestion({
    required String question,
    required List<PartChatDTO> listPartChat,
  });
}
