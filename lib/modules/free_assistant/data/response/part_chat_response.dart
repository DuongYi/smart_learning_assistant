import 'package:freezed_annotation/freezed_annotation.dart';

part 'part_chat_response.freezed.dart';
part 'part_chat_response.g.dart';

@freezed
class PartChatResponse with _$PartChatResponse {
  const factory PartChatResponse({
    @JsonKey(name: 'text') required String text,
  }) = _PartChatResponse;

  factory PartChatResponse.fromJson(Map<String, dynamic> json) =>
      _$PartChatResponseFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
