import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_learning_assistant/modules/free_assistant/data/response/content_chat_response.dart';
import 'package:smart_learning_assistant/modules/free_assistant/data/response/safety_ratings_response.dart';

part 'candidate_chat_response.freezed.dart';
part 'candidate_chat_response.g.dart';

@freezed
class CandidateChatResponse with _$CandidateChatResponse {
  const factory CandidateChatResponse({
    @JsonKey(name: 'content') required ContentChatResponse content,
    @JsonKey(name: 'finishReason') required String finishReason,
    @JsonKey(name: 'index') required int index,
    @JsonKey(name: 'safetyRatings')
    required List<SafetyRatingsResponse> safetyRatings,
  }) = _CandidateChatResponse;

  factory CandidateChatResponse.fromJson(Map<String, dynamic> json) =>
      _$CandidateChatResponseFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
