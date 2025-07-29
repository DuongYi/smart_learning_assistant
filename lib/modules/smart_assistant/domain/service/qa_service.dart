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
    const endpoint = 'https://openrouter.ai/api/v1/chat/completions';

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
              // 'HTTP-Referer': '<YOUR_SITE_URL>', // Optional
              // 'X-Title': '<YOUR_SITE_NAME>', // Optional
            },
          ),
          data: {
            'model': 'openai/gpt-4o',
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
            'model': 'openai/gpt-4o',
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
