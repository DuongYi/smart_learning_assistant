import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:smart_learning_assistant/base/ui/s_base_page_screen.dart';
import 'package:smart_learning_assistant/base/widget/k_text.dart';
import 'package:smart_learning_assistant/modules/document/widget/start_card_widget.dart';

class DocumentScreen extends SBasePage {
  const DocumentScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DocumentScreenState();
}

class _DocumentScreenState extends SBasePageState<DocumentScreen>
    with SBasePageScreen {
  @override
  void onBackPressed(BuildContext context, WidgetRef ref) {
    context.pop();
  }

  @override
  void onSearch(String text, BuildContext context, WidgetRef ref) {}

  @override
  void initState() {
    isBackButton(true);
    setTitle('Tài liệu');

    super.initState();
  }

  @override
  Widget buildBody(BuildContext context, WidgetRef ref) {
    final docs = [
      {
        'title': 'Q4 Company Meeting - December 15th',
        'status': 'High',
        'date': 'Fri, Jan 13',
        'type': 'Draft',
        'size': '5.7 MB',
      },
      {
        'title': 'Q4 Company Meeting - December 15th',
        'status': 'Draft',
        'date': 'Fri, Jan 13',
        'type': 'Draft',
        'size': '5.7 MB',
      },
      // ...có thể thêm nhiều mẫu
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            KText(
              text: 'Document Center',
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            const SizedBox(height: 8),
            KText(
              text:
                  'Manage your certifications, contracts, and important documents',
              color: Colors.white60,
              fontSize: 16,
            ),
            const SizedBox(height: 20),
            // Tổng quan
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StartCardWidget(
                  value: '8',
                  label: 'Total Documents',
                  color: Colors.blue,
                ),
                StartCardWidget(
                  value: '4',
                  label: 'Valid',
                  color: Colors.green,
                ),
                StartCardWidget(
                  value: '1',
                  label: 'Valid',
                  color: Colors.orange,
                  subtitle: 'Active documents',
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Search + Upload
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search documents',
                      prefixIcon: const Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.grey[100],
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 12,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.filter_alt_outlined),
                  onPressed: () {},
                  color: Colors.blue,
                ),
                IconButton(
                  icon: const Icon(Icons.grid_view),
                  onPressed: () {},
                  color: Colors.blue,
                ),
                IconButton(
                  icon: const Icon(Icons.add_circle),
                  onPressed: () {},
                  color: Colors.blue,
                  iconSize: 32,
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Danh sách tài liệu
            KText(
              text: '${docs.length} documents found',
              color: Colors.grey[700],
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(height: 8),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: docs.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, i) {
                final doc = docs[i];
                return Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.insert_drive_file,
                          color: Colors.blue,
                          size: 28,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: KText(
                                    text: doc['title'],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: doc['status'] == 'High'
                                        ? Colors.red[100]
                                        : doc['status'] == 'Draft'
                                        ? Colors.orange[100]
                                        : Colors.green[100],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: KText(
                                    text: doc['status'],
                                    color: doc['status'] == 'High'
                                        ? Colors.red
                                        : doc['status'] == 'Draft'
                                        ? Colors.orange
                                        : Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                KText(
                                  text: doc['type'],
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                                const SizedBox(width: 8),
                                KText(
                                  text: doc['date'],
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                                const SizedBox(width: 8),
                                KText(
                                  text: doc['size'],
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      IconButton(
                        icon: const Icon(Icons.download_rounded),
                        onPressed: () {},
                        color: Colors.blue,
                      ),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
