import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_learning_assistant/modules/free_assistant/data/response/part_chat_response.dart';

part 'content_chat_response.freezed.dart';
part 'content_chat_response.g.dart';

@freezed
class ContentChatResponse with _$ContentChatResponse {
  const factory ContentChatResponse({
    @JsonKey(name: 'parts') required List<PartChatResponse> parts,
    @JsonKey(name: 'role') required String role,
  }) = _ContentChatResponse;

  factory ContentChatResponse.fromJson(Map<String, dynamic> json) =>
      _$ContentChatResponseFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
