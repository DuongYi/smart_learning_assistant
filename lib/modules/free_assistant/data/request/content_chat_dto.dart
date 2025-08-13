import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_learning_assistant/modules/free_assistant/data/request/part_chat_dto.dart';

part 'content_chat_dto.freezed.dart';
part 'content_chat_dto.g.dart';

@freezed
class ContentChatDTO with _$ContentChatDTO {
  const factory ContentChatDTO({
    @JsonKey(name: 'parts') required List<PartChatDTO> parts,
  }) = _ContentChatDTO;

  factory ContentChatDTO.fromJson(Map<String, dynamic> json) =>
      _$ContentChatDTOFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
