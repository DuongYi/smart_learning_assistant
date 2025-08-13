// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generation_config_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GenerationConfigDTO _$GenerationConfigDTOFromJson(Map<String, dynamic> json) =>
    _GenerationConfigDTO(
      temperature: (json['temperature'] as num).toDouble(),
      maxOutputTokens: (json['maxOutputTokens'] as num).toInt(),
    );

Map<String, dynamic> _$GenerationConfigDTOToJson(
  _GenerationConfigDTO instance,
) => <String, dynamic>{
  'temperature': instance.temperature,
  'maxOutputTokens': instance.maxOutputTokens,
};
