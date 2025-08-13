import 'package:freezed_annotation/freezed_annotation.dart';

part 'generation_config_dto.freezed.dart';
part 'generation_config_dto.g.dart';

@freezed
class GenerationConfigDTO with _$GenerationConfigDTO {
  const factory GenerationConfigDTO({
    @JsonKey(name: 'temperature') required double temperature,
    @JsonKey(name: 'maxOutputTokens') required int maxOutputTokens,
  }) = _GenerationConfigDTO;

  factory GenerationConfigDTO.fromJson(Map<String, dynamic> json) =>
      _$GenerationConfigDTOFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
