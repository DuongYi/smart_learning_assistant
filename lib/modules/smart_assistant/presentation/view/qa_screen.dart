import 'package:flutter/material.dart';
import 'dart:io';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import '../controller/qa_controller.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class QAScreen extends ConsumerStatefulWidget {
  const QAScreen({super.key});

  @override
  ConsumerState<QAScreen> createState() => _QAScreenState();
}

class _QAScreenState extends ConsumerState<QAScreen> {
  final TextEditingController _textController = TextEditingController();
  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();
  final _scrollController = ScrollController();

  Future<void> _pickImage() async {
    final XFile? picked = await _picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setState(() {
        _selectedImage = File(picked.path);
      });
    }
  }

  Future<void> _pickCamera() async {
    final XFile? picked = await _picker.pickImage(source: ImageSource.camera);
    if (picked != null) {
      setState(() {
        _selectedImage = File(picked.path);
      });
    }
  }

  Future<void> _sendMessage() async {
    final qaController = ref.read(qAControllerProvider.notifier);
    final text = _textController.text.trim();
    if (text.isEmpty && _selectedImage == null) return;
    await qaController.sendQuestion(question: text, image: _selectedImage);
    _textController.clear();
    setState(() {
      _selectedImage = null;
    });
    await Future.delayed(const Duration(milliseconds: 300));
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(qAControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smart Assistant Q&A'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            tooltip: 'Xóa lịch sử chat',
            onPressed: () async {
              await ref.read(qAControllerProvider.notifier).clearHistory();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Đã xóa lịch sử chat!')),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                padding: const EdgeInsets.all(8),
                itemCount: state.history.length,
                itemBuilder: (context, index) {
                  final msg = state.history[index];
                  return Align(
                    alignment: msg.isUser
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.7,
                      ),
                      child: Card(
                        color: msg.isUser ? Colors.blue[100] : Colors.grey[200],
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (msg.text.isNotEmpty)
                                _buildMessageContent(msg.text),

                              if (msg.imagePath != null)
                                Padding(
                                  padding: const EdgeInsets.only(top: 6.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.file(
                                      File(msg.imagePath!),
                                      width: 140,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            if (state.isLoading)
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircularProgressIndicator(),
              ),
            if (state.error != null)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Lỗi: ${state.error}',
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            if (_selectedImage != null)
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.file(
                        _selectedImage!,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close, size: 20),
                      onPressed: () => setState(() => _selectedImage = null),
                    ),
                  ],
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  PopupMenuButton<int>(
                    icon: const Icon(Icons.image),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: 0,
                        child: Row(
                          children: const [
                            Icon(Icons.photo, size: 18),
                            SizedBox(width: 8),
                            Text('Chọn từ thư viện'),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 1,
                        child: Row(
                          children: const [
                            Icon(Icons.camera_alt, size: 18),
                            SizedBox(width: 8),
                            Text('Chụp ảnh'),
                          ],
                        ),
                      ),
                    ],
                    onSelected: (value) {
                      if (value == 0) _pickImage();
                      if (value == 1) _pickCamera();
                    },
                  ),
                  Expanded(
                    child: TextField(
                      controller: _textController,
                      minLines: 1,
                      maxLines: 4,
                      decoration: InputDecoration(hintText: 'Nhập câu hỏi...'),
                      onSubmitted: (_) => _sendMessage(),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    color: Theme.of(context).primaryColor,
                    onPressed: state.isLoading ? null : _sendMessage,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Widget _buildMessageContent(String text) {
    // Nhận diện và paint nhiều công thức toán học trong cùng một đoạn text
    // Nhận diện $...$, $$...$$, \(...\), \[...\]
    final latexRegex = RegExp(
      r'(\$\$.*?\$\$|\$.*?\$|\\\(.*?\\\)|\\\[.*?\\\])',
      dotAll: true,
    );
    final spans = <Widget>[];
    int lastIndex = 0;
    final matches = latexRegex.allMatches(text);
    for (final match in matches) {
      // Đoạn text trước công thức
      if (match.start > lastIndex) {
        final before = text.substring(lastIndex, match.start);
        if (before.trim().isNotEmpty) {
          spans.add(Text(before.trim(), style: const TextStyle(fontSize: 16)));
        }
      }
      // Công thức toán học
      var formula = match
          .group(0)!
          .replaceAll("\n", " ")
          .replaceAll("\u0000", "");
      // Loại bỏ ký tự $ hoặc $$, \(, \) hoặc \[, \] ở đầu/cuối (tối ưu)
      if (formula.startsWith(r'$$') && formula.endsWith(r'$$')) {
        formula = formula.substring(2, formula.length - 2);
      } else if (formula.startsWith(r'$') && formula.endsWith(r'$')) {
        formula = formula.substring(1, formula.length - 1);
      } else if (formula.startsWith(r'\(') && formula.endsWith(r'\)')) {
        formula = formula.substring(2, formula.length - 2);
      } else if (formula.startsWith(r'\[') && formula.endsWith(r'\]')) {
        formula = formula.substring(2, formula.length - 2);
      }
      formula = formula.trim();
      // Nếu công thức bắt đầu bằng ký tự \ dư, loại bỏ 1 lần (chỉ khi không phải lệnh latex)
      if (formula.startsWith('\\') &&
          !RegExp(
            r'^\\(frac|sqrt|int|sum|lim|sin|cos|tan|log|ln|binom)',
          ).hasMatch(formula)) {
        formula = formula.substring(1);
      }

      spans.add(
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Math.tex(
              formula,
              textStyle: const TextStyle(
                fontSize: 18,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ),
      );
      lastIndex = match.end;
    }
    // Đoạn text sau công thức cuối cùng
    if (lastIndex < text.length) {
      final after = text.substring(lastIndex);
      if (after.trim().isNotEmpty) {
        spans.add(Text(after.trim(), style: const TextStyle(fontSize: 16)));
      }
    }
    if (spans.isNotEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: spans,
      );
    }
    // Nếu không có $...$, thử nhận diện công thức toán học phổ biến
    final mathLike = RegExp(
      r'[=+\-*/^_\\]|\\frac|\\sqrt|\\int|\\sum|\\lim|\\sin|\\cos|\\tan|\\log|\\ln',
    );
    if (mathLike.hasMatch(text)) {
      try {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Math.tex(
            text,
            textStyle: const TextStyle(fontSize: 18, color: Colors.deepPurple),
          ),
        );
      } catch (e) {
        // Nếu lỗi, fallback về Text thường
        return Text(text, style: const TextStyle(fontSize: 16));
      }
    }
    // Nếu không có công thức, hiển thị text bình thường
    return Text(text, style: const TextStyle(fontSize: 16));
  }
}
