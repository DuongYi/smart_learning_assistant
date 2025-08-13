// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidate_chat_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CandidateChatResponse _$CandidateChatResponseFromJson(
  Map<String, dynamic> json,
) => _CandidateChatResponse(
  content: ContentChatResponse.fromJson(
    json['content'] as Map<String, dynamic>,
  ),
  finishReason: json['finishReason'] as String,
  index: (json['index'] as num).toInt(),
  safetyRatings: (json['safetyRatings'] as List<dynamic>)
      .map((e) => SafetyRatingsResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CandidateChatResponseToJson(
  _CandidateChatResponse instance,
) => <String, dynamic>{
  'content': instance.content,
  'finishReason': instance.finishReason,
  'index': instance.index,
  'safetyRatings': instance.safetyRatings,
};
