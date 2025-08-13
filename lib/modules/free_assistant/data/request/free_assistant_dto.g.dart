// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'free_assistant_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FreeAssistantDTO _$FreeAssistantDTOFromJson(Map<String, dynamic> json) =>
    _FreeAssistantDTO(
      contents: (json['contents'] as List<dynamic>)
          .map((e) => ContentChatDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      generationConfig: GenerationConfigDTO.fromJson(
        json['generationConfig'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$FreeAssistantDTOToJson(_FreeAssistantDTO instance) =>
    <String, dynamic>{
      'contents': instance.contents,
      'generationConfig': instance.generationConfig,
    };
