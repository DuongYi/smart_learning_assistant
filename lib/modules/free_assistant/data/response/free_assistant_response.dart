import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_learning_assistant/modules/free_assistant/data/response/candidate_chat_response.dart';

part 'free_assistant_response.freezed.dart';
part 'free_assistant_response.g.dart';

@freezed
class FreeAssistantResponse with _$FreeAssistantResponse {
  const factory FreeAssistantResponse({
    @JsonKey(name: 'candidates')
    required List<CandidateChatResponse> candidates,
  }) = _FreeAssistantResponse;

  factory FreeAssistantResponse.fromJson(Map<String, dynamic> json) =>
      _$FreeAssistantResponseFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
