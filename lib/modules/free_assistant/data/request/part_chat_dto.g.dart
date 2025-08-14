// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'part_chat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InlineDataDTO _$InlineDataDTOFromJson(Map<String, dynamic> json) =>
    _InlineDataDTO(
      mimeType: json['mime_type'] as String,
      data: json['data'] as String,
    );

Map<String, dynamic> _$InlineDataDTOToJson(_InlineDataDTO instance) =>
    <String, dynamic>{'mime_type': instance.mimeType, 'data': instance.data};

_FileDataDTO _$FileDataDTOFromJson(Map<String, dynamic> json) => _FileDataDTO(
  fileUri: json['fileUri'] as String,
  mimeType: json['mime_type'] as String?,
);

Map<String, dynamic> _$FileDataDTOToJson(_FileDataDTO instance) =>
    <String, dynamic>{
      'fileUri': instance.fileUri,
      'mime_type': instance.mimeType,
    };

_PartChatDTO _$PartChatDTOFromJson(Map<String, dynamic> json) => _PartChatDTO(
  text: json['text'] as String?,
  inlineData: json['inline_data'] == null
      ? null
      : InlineDataDTO.fromJson(json['inline_data'] as Map<String, dynamic>),
  fileData: json['file_data'] == null
      ? null
      : FileDataDTO.fromJson(json['file_data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PartChatDTOToJson(_PartChatDTO instance) =>
    <String, dynamic>{
      'text': instance.text,
      'inline_data': instance.inlineData,
      'file_data': instance.fileData,
    };
