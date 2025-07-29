import 'dart:io';
import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:logger/logger.dart';

class QAService {
  final Dio _dio;
  final String _apiKey;

  QAService({Dio? dio, String? apiKey})
    : _dio = dio ?? Dio(),
      _apiKey =
          apiKey ??
          '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';

  /// Gửi câu hỏi (text) và/hoặc ảnh lên OpenAI API, trả về phản hồi dạng text
  Future<String> sendQuestion({required String question, File? image}) async {
    const endpoint = 'https://api.openai.com/v1/chat/completions';

    try {
      if (image == null) {
        // Chỉ gửi text
        Logger().i('[QAService] Request (text only): $question');
        final response = await _dio.post(
          endpoint,
          options: Options(
            headers: {
              'Authorization': 'Bearer $_apiKey',
              'Content-Type': 'application/json',
            },
          ),
          data: {
            'model': 'gpt-4.1',
            'messages': [
              {'role': 'user', 'content': question},
            ],
            'max_tokens': 1024,
          },
        );
        Logger().f('[QAService] API CALL: $endpoint');
        Logger().i('[QAService] Response: ${response.data}');
        return response.data['choices'][0]['message']['content'] as String;
      } else {
        // Gửi text + ảnh (GPT-4 Vision hoặc endpoint tương tự)
        final bytes = await image.readAsBytes();
        final base64Image = base64Encode(bytes);
        Logger().i(
          '[QAService] Request (text+image): text="$question", imageBytes=${bytes.length}',
        );
        final response = await _dio.post(
          endpoint,
          options: Options(
            headers: {
              'Authorization': 'Bearer $_apiKey',
              'Content-Type': 'application/json',
            },
          ),
          data: {
            'model': 'gpt-4-vision-preview',
            'messages': [
              {
                'role': 'user',
                'content': [
                  {'type': 'text', 'text': question},
                  {
                    'type': 'image_url',
                    'image_url': {'url': 'data:image/png;base64,$base64Image'},
                  },
                ],
              },
            ],
            'max_tokens': 1024,
          },
        );
        Logger().i('[QAService] Response: ${response.data}');
        return response.data['choices'][0]['message']['content'] as String;
      }
    } catch (e, stack) {
      Logger().e('[QAService] Error: $e', error: e, stackTrace: stack);
      rethrow;
    }
  }
}
