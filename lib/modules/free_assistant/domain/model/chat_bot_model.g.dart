// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_bot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatBotModel _$ChatBotModelFromJson(Map<String, dynamic> json) =>
    _ChatBotModel(
      isUser: json['isUser'] as bool,
      question: json['question'] as String,
    );

Map<String, dynamic> _$ChatBotModelToJson(_ChatBotModel instance) =>
    <String, dynamic>{'isUser': instance.isUser, 'question': instance.question};
