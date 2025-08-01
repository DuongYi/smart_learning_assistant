import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PackageTabScreen extends ConsumerWidget {
  const PackageTabScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(child: Center(child: Text('Package Tab')));
  }
}
