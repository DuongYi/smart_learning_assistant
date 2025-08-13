import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_learning_assistant/modules/free_assistant/data/request/content_chat_dto.dart';
import 'package:smart_learning_assistant/modules/free_assistant/data/request/generation_config_dto.dart';

part 'free_assistant_dto.freezed.dart';
part 'free_assistant_dto.g.dart';

@freezed
class FreeAssistantDTO with _$FreeAssistantDTO {
  const factory FreeAssistantDTO({
    @JsonKey(name: 'contents') required List<ContentChatDTO> contents,
    @JsonKey(name: 'generationConfig')
    required GenerationConfigDTO generationConfig,
  }) = _FreeAssistantDTO;

  factory FreeAssistantDTO.fromJson(Map<String, dynamic> json) =>
      _$FreeAssistantDTOFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
