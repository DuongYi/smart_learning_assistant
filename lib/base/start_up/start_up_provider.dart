import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'start_up_provider.g.dart';

@Riverpod(keepAlive: true)
Future<void> startUp(Ref ref) async {
  // final secureStorage = ref.watch(secureStorageProvider);
  // final accessToken = await secureStorage.read(accessTokenKey);

  // if (accessToken != null) {
  //   ref.read(authStateProvider.notifier).setAuthState(true);
  // }
}
