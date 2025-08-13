// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'free_assistant_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FreeAssistantResponse _$FreeAssistantResponseFromJson(
  Map<String, dynamic> json,
) => _FreeAssistantResponse(
  candidates: (json['candidates'] as List<dynamic>)
      .map((e) => CandidateChatResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FreeAssistantResponseToJson(
  _FreeAssistantResponse instance,
) => <String, dynamic>{'candidates': instance.candidates};
