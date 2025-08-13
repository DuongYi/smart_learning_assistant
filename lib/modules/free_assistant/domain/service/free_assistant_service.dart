import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:smart_learning_assistant/modules/free_assistant/data/request/content_chat_dto.dart';
import 'package:smart_learning_assistant/modules/free_assistant/data/request/free_assistant_dto.dart';
import 'package:smart_learning_assistant/modules/free_assistant/data/request/generation_config_dto.dart';
import 'package:smart_learning_assistant/modules/free_assistant/data/request/part_chat_dto.dart';

class FreeAssistantService {
  final Dio _dio;
  final String _apiKey;

  FreeAssistantService({Dio? dio, String? apiKey})
    : _dio = dio ?? Dio(),
      _apiKey = apiKey ?? 'AIzaSyA7qBYapGhyZGUgxwkxF2XMiIVhRUx0SVM';

  /// Gửi câu hỏi (text) và/hoặc ảnh lên OpenAI API, trả về phản hồi dạng text
  Future<String> sendQuestion({
    required String question,
    required List<PartChatDTO> listPartChat,
  }) async {
    final endpoint =
        'https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash-lite:generateContent?key=$_apiKey';

    try {
      // Chỉ gửi text
      Logger().i('[FreeAssistantService] Request (text only): $question');
      final response = await _dio.post(
        endpoint,
        options: Options(headers: {'Content-Type': 'application/json'}),
        data: FreeAssistantDTO(
          contents: <ContentChatDTO>[ContentChatDTO(parts: listPartChat)],
          generationConfig: GenerationConfigDTO(
            temperature: 1,
            maxOutputTokens: 8192,
          ),
        ),
      );

      Logger().f('[FreeAssistantService] API CALL: $endpoint');
      Logger().i('[FreeAssistantService] Response: ${response.data}');

      if (response.statusCode == 200 && response.data != null) {
        final data = response.data is Map
            ? response.data as Map
            : jsonDecode(response.data as String);

        final candidates = (data['candidates'] as List?) ?? const [];
        if (candidates.isEmpty) {
          return 'Không nhận được phản hồi từ mô hình.';
        }

        // Tìm phần text đầu tiên hợp lệ trong parts
        final content = candidates.first['content'] as Map<String, dynamic>?;
        final parts = (content?['parts'] as List?) ?? const [];
        final firstTextPart = parts.cast<Map>().firstWhere(
          (p) => p['text'] is String && (p['text'] as String).trim().isNotEmpty,
          orElse: () => const {},
        );

        final text = (firstTextPart['text'] as String?)?.trim();
        if (text == null || text.isEmpty) {
          return 'Mô hình phản hồi nhưng không có text.';
        }
        return text;
      }

      // Lỗi HTTP != 200
      final errBody = response.data;
      return 'Có lỗi xảy ra (HTTP ${response.statusCode}). ${errBody is Map ? jsonEncode(errBody) : (errBody?.toString() ?? '')}';
    } on DioException catch (e, stack) {
      final status = e.response?.statusCode;
      final body = e.response?.data;
      Logger().e(
        '[FreeAssistantService] Dio error: $status ${e.message}',
        error: e,
        stackTrace: stack,
      );
      return 'Lỗi mạng/API ($status): ${body is Map ? jsonEncode(body) : (body?.toString() ?? e.message)}';
    } catch (e, stack) {
      Logger().e(
        '[FreeAssistantService] Error: $e',
        error: e,
        stackTrace: stack,
      );
      rethrow;
    }
  }
}
