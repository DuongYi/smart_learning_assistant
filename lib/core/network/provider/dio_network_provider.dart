import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smart_learning_assistant/helper/logger/logger_provider.dart';

part 'dio_network_provider.g.dart';

@riverpod
InterceptorsWrapper interceptorSla(Ref ref) {
  final log = ref.watch(loggerProvider);

  return InterceptorsWrapper(
    onRequest: (options, handler) {
      log.i('[REQUEST] ${options.uri}');
      handler.next(options);
    },
    onResponse: (response, handler) {
      log.i('[RESPONSE] ${response.statusCode}');
      handler.next(response);
    },
    onError: (e, handler) {
      log.e('[ERROR] ${e.message}');
      handler.next(e);
    },
  );
}

@riverpod
Dio httpClient(Ref ref) {
  final options = BaseOptions(
    baseUrl: 'https://jsonplaceholder.typicode.com/',
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 5),
  );

  return Dio(options)..interceptors.add(ref.watch(interceptorSlaProvider));
}
