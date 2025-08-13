// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_chat_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContentChatResponse _$ContentChatResponseFromJson(Map<String, dynamic> json) =>
    _ContentChatResponse(
      parts: (json['parts'] as List<dynamic>)
          .map((e) => PartChatResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      role: json['role'] as String,
    );

Map<String, dynamic> _$ContentChatResponseToJson(
  _ContentChatResponse instance,
) => <String, dynamic>{'parts': instance.parts, 'role': instance.role};
