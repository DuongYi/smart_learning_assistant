import 'package:freezed_annotation/freezed_annotation.dart';

part 'part_chat_dto.freezed.dart';
part 'part_chat_dto.g.dart';

@freezed
class PartChatDTO with _$PartChatDTO {
  const factory PartChatDTO({@JsonKey(name: 'text') required String question}) =
      _PartChatDTO;

  factory PartChatDTO.fromJson(Map<String, dynamic> json) =>
      _$PartChatDTOFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
