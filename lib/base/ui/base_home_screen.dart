import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class BaseHomeScreen extends StatefulHookConsumerWidget {
  const BaseHomeScreen({super.key});

  /// Override để trả về widget nội dung chính của màn home
  Widget buildBody(BuildContext context, WidgetRef ref);

  /// Có thể override để custom AppBar
  PreferredSizeWidget? buildAppBar(BuildContext context, WidgetRef ref) =>
      AppBar(title: Text(title));

  /// Title màn hình
  String get title => 'Home';

  /// Có hiển thị nút back không
  bool get showBack => false;

  /// Có hiển thị search không
  bool get showSearch => false;

  /// Có hiển thị bottom button không
  bool get showBottomButton => false;

  /// Label cho bottom button
  String get bottomButtonLabel => '';

  /// Callback khi nhấn bottom button
  void onBottomButtonPressed(BuildContext context, WidgetRef ref) {}

  /// Callback khi nhấn back
  void onBackPressed(BuildContext context, WidgetRef ref) {
    Navigator.of(context).maybePop();
  }

  /// Callback khi search
  void onSearch(String text, BuildContext context, WidgetRef ref) {}

  @override
  BaseHomeScreenState createState() => BaseHomeScreenState();
}

class BaseHomeScreenState extends ConsumerState<BaseHomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.0, 0.25, 0.5, 0.75, 1.0],
            colors: [
              Color(0xFF2B3636),
              Color(0xFF242E2E),
              Color(0xFF202427),
              Color(0xFF1F1F1F),
              Color(0xFF2B2B2B),
            ],
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              if (widget.showSearch)
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      hintText: 'Tìm kiếm...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (text) => widget.onSearch(text, context, ref),
                  ),
                ),
              Expanded(child: widget.buildBody(context, ref)),
            ],
          ),
        ),
      ),
    );
  }
}
