import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smart_learning_assistant/base/widget/k_text.dart';
import 'package:smart_learning_assistant/core/service/theme/theme.dart';

abstract class BasePageScreen extends StatefulHookConsumerWidget {
  const BasePageScreen({super.key});

  /// Override để trả về widget nội dung chính của màn home
  Widget buildBody(BuildContext context, WidgetRef ref);

  /// Có thể override để custom AppBar
  PreferredSizeWidget? buildAppBar(BuildContext context, WidgetRef ref) =>
      AppBar(title: Text(title));

  /// Title màn hình
  String get title => 'Home';

  /// Có center title không
  bool get centerTitle => true;

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
  BasePageScreenState createState() => BasePageScreenState();
}

class BasePageScreenState extends ConsumerState<BasePageScreen> {
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
              Stack(
                children: [
                  Container(
                    height: 40,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 4,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: widget.centerTitle
                          ? CrossAxisAlignment.center
                          : CrossAxisAlignment.start,
                      children: [
                        KText(
                          text: widget.title,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xE0FFFFFF),
                        ),
                      ],
                    ),
                  ),
                  if (widget.showBack)
                    Positioned(
                      left: 24,
                      top: 4,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.tone(90),
                          shape: BoxShape.circle,
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => widget.onBackPressed(context, ref),
                            borderRadius: BorderRadius.circular(1000),
                            child: Container(
                              padding: const EdgeInsets.all(6),
                              child: Icon(
                                CupertinoIcons.arrow_left,
                                color: Colors.black,
                                size: 22,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),

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

              if (widget.showBottomButton)
                ElevatedButton(
                  onPressed: () => widget.onBottomButtonPressed(context, ref),
                  child: Text(widget.bottomButtonLabel),
                ),
              Expanded(child: widget.buildBody(context, ref)),
            ],
          ),
        ),
      ),
    );
  }
}
