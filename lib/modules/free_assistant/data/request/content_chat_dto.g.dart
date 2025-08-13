// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_chat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContentChatDTO _$ContentChatDTOFromJson(Map<String, dynamic> json) =>
    _ContentChatDTO(
      parts: (json['parts'] as List<dynamic>)
          .map((e) => PartChatDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ContentChatDTOToJson(_ContentChatDTO instance) =>
    <String, dynamic>{'parts': instance.parts};
