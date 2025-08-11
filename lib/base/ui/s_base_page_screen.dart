import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smart_learning_assistant/base/widget/k_text.dart';
import 'package:smart_learning_assistant/core/service/theme/theme.dart';

abstract class SBasePage extends StatefulHookConsumerWidget {
  const SBasePage({super.key});
}

abstract class SBasePageState<T extends SBasePage> extends ConsumerState<T> {
  bool _isShowBack = false;
  String _title = "";
  bool _isCenterTitle = true;
  bool _isShowSearchBar = false;
  final TextEditingController _searchController = TextEditingController();

  void isBackButton(bool isBack) {
    _isShowBack = isBack;
  }

  void setTitle(String title) {
    _title = title;
  }

  void setCenterTitle(bool isCenter) {
    _isCenterTitle = isCenter;
  }

  void isSearch(bool isSearch) {
    _isShowSearchBar = isSearch;
  }

  void onBackPressed(BuildContext context, WidgetRef ref);

  void onSearch(String text, BuildContext context, WidgetRef ref);
}

mixin SBasePageScreen<T extends SBasePage> on SBasePageState<T> {
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
                      crossAxisAlignment: _isCenterTitle
                          ? CrossAxisAlignment.center
                          : CrossAxisAlignment.start,
                      children: [
                        KText(
                          text: _title,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xE0FFFFFF),
                        ),
                      ],
                    ),
                  ),
                  if (_isShowBack)
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
                            onTap: () => onBackPressed(context, ref),
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

              if (_isShowSearchBar)
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      hintText: 'Tìm kiếm...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (text) => onSearch(text, context, ref),
                  ),
                ),

              Expanded(child: buildBody(context, ref)),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBody(BuildContext context, WidgetRef ref);
}
