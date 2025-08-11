import 'package:flutter/material.dart';
import 'dart:io';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smart_learning_assistant/base/widget/k_text.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class FreeAssistantScreen extends ConsumerStatefulWidget {
  const FreeAssistantScreen({super.key});

  @override
  ConsumerState<FreeAssistantScreen> createState() =>
      _FreeAssistantScreenState();
}

class _FreeAssistantScreenState extends ConsumerState<FreeAssistantScreen> {
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
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Material(
      child: Container(
        child: SafeArea(
          child: Column(
            children: [
              // Custom AppBar
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    KText(
                      text: 'Q&A Assistant',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete, color: Colors.white),
                      onPressed: () {
                        ref.read(qAControllerProvider.notifier).clearHistory();
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  controller: _scrollController,
                  padding: const EdgeInsets.all(12),
                  itemCount: state.history.length,
                  itemBuilder: (context, index) {
                    final msg = state.history[index];
                    final isUser = msg.isUser;
                    return Align(
                      alignment: isUser
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 6),
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.75,
                        ),
                        child: Material(
                          color: isUser
                              ? Colors.deepPurple[400]
                              : (isDark
                                    ? const Color(0xFF23262F)
                                    : Colors.grey[200]),
                          borderRadius: BorderRadius.circular(18),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 10,
                            ),
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
                padding: const EdgeInsets.fromLTRB(12, 8, 12, 16),
                child: Row(
                  children: [
                    PopupMenuButton<int>(
                      icon: const Icon(Icons.image, color: Colors.white),
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
                    const SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: isDark
                              ? const Color(0xFF23262F)
                              : Colors.grey[200],
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: TextField(
                          controller: _textController,
                          minLines: 1,
                          maxLines: 4,
                          style: const TextStyle(fontSize: 16),
                          decoration: InputDecoration(
                            hintText: 'Type your question...',
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                          ),
                          onSubmitted: (_) => _sendMessage(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(206, 255, 255, 255),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFC2C2C2),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons
                              .send_rounded, // hoặc Icons.play_arrow nếu bạn muốn
                          size: 24,
                          color: Colors.black, // nét đen giống hình
                        ),
                        onPressed: state.isLoading ? null : _sendMessage,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
