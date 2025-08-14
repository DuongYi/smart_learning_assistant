import 'package:freezed_annotation/freezed_annotation.dart';

part 'part_chat_dto.freezed.dart';
part 'part_chat_dto.g.dart';

@freezed
class InlineDataDTO with _$InlineDataDTO {
  const factory InlineDataDTO({
    @JsonKey(name: 'mime_type') required String mimeType,
    required String data, // base64
  }) = _InlineDataDTO;

  factory InlineDataDTO.fromJson(Map<String, dynamic> json) =>
      _$InlineDataDTOFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

@freezed
class FileDataDTO with _$FileDataDTO {
  const factory FileDataDTO({
    required String fileUri,
    @JsonKey(name: 'mime_type') String? mimeType,
  }) = _FileDataDTO;

  factory FileDataDTO.fromJson(Map<String, dynamic> json) =>
      _$FileDataDTOFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

@freezed
class PartChatDTO with _$PartChatDTO {
  const factory PartChatDTO({
    String? text,
    @JsonKey(name: 'inline_data') InlineDataDTO? inlineData,
    @JsonKey(name: 'file_data') FileDataDTO? fileData,
  }) = _PartChatDTO;

  factory PartChatDTO.fromJson(Map<String, dynamic> json) =>
      _$PartChatDTOFromJson(json);

  /// Guards nhỏ để tránh set cả 2–3 field cùng lúc (tùy bạn có dùng hay bỏ)
  @Assert(
    '([text != null] + [inlineData != null] + [fileData != null]) == 1',
    'PartChatDTO phải có đúng 1 loại: text hoặc inline_data hoặc file_data',
  )
  const PartChatDTO._();

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
