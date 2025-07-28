import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smart_learning_assistant/core/network/provider/dio_network_provider.dart';
import 'package:smart_learning_assistant/modules/home/application/home_service.dart';

part 'home_service_provider.g.dart';

@riverpod
HomeService homeService(Ref ref) {
  final dio = ref.watch(httpClientProvider);
  return HomeService(dio);
}
