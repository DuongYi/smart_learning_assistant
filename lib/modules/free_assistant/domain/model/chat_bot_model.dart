import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_bot_model.freezed.dart';
part 'chat_bot_model.g.dart';

@freezed
class ChatBotModel with _$ChatBotModel {
  const factory ChatBotModel({
    @JsonKey(name: 'isUser') required bool isUser,
    @JsonKey(name: 'question') required String question,
  }) = _ChatBotModel;

  factory ChatBotModel.fromJson(Map<String, dynamic> json) =>
      _$ChatBotModelFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
