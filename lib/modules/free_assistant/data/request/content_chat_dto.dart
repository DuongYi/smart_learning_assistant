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

  // Chỉ text
  factory ContentChatDTO.userText(String text) =>
      ContentChatDTO(parts: [PartChatDTO(text: text)]);

  // Ảnh base64 + prompt
  factory ContentChatDTO.userImageBase64(
    String base64Data, {
    String mimeType = 'image/jpeg',
    String? prompt,
  }) => ContentChatDTO(
    parts: [
      PartChatDTO(
        inlineData: InlineDataDTO(mimeType: mimeType, data: base64Data),
      ),
      if (prompt?.isNotEmpty == true) PartChatDTO(text: prompt),
    ],
  );

  // Append text
  // ContentChatDTO appendText(String text) => copyWith(
  //   parts: [
  //     ...parts,
  //     PartChatDTO(text: text),
  //   ],
  // );

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
