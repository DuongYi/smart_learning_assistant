import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smart_learning_assistant/base/widget/k_text.dart';
import 'package:smart_learning_assistant/modules/dummy_scrren_test/dummy_screen_test.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:smart_learning_assistant/modules/home/presentation/widget/appbar_new_home_widget.dart';
import 'package:smart_learning_assistant/modules/home/presentation/widget/home_title_widget.dart';

class StickyNoteCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> tags;
  final String time;
  final bool isFavorite;
  final VoidCallback? onTap;
  final Color color;
  final IconData? icon;

  const StickyNoteCard({
    super.key,
    required this.title,
    required this.description,
    required this.tags,
    required this.time,
    this.isFavorite = false,
    this.onTap,
    this.color = const Color(0xFFEDFBC1),
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 18, bottom: 12),
        padding: const EdgeInsets.all(18),
        width: 240,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(28),
            topRight: const Radius.circular(18),
            bottomLeft: const Radius.circular(28),
            bottomRight: const Radius.circular(28),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 16,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                if (icon != null) Icon(icon, color: Colors.black54, size: 20),
                if (icon != null) const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                if (isFavorite)
                  Icon(Icons.favorite, color: Colors.yellow[700], size: 20),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 14, color: Colors.black87),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 6,
              children: tags
                  .map(
                    (tag) => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.08),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        tag,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  time,
                  style: const TextStyle(fontSize: 13, color: Colors.black54),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.12),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 18,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HomeTabScreen extends ConsumerStatefulWidget {
  const HomeTabScreen({super.key});

  @override
  ConsumerState<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends ConsumerState<HomeTabScreen> {
  final TextEditingController _textController = TextEditingController();
  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();

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

  void _sendMessage() {
    _textController.clear();
    setState(() {
      _selectedImage = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(
      viewportFraction: 0.78,
    );

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // AppBar
                AppBarNewHomeWidget(),

                const SizedBox(height: 8),

                // Input gửi tin nhắn + ảnh
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.2),
                                blurRadius: 4,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: TextField(
                            controller: _textController,
                            minLines: 1,
                            maxLines: 3,
                            style: const TextStyle(fontSize: 16),
                            decoration: const InputDecoration(
                              hintText: 'Đặt câu hỏi về môn học...',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
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
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.2),
                              blurRadius: 4,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: PopupMenuButton<int>(
                          icon: Icon(
                            CupertinoIcons.camera,
                            color: Colors.black,
                          ),
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
                      ),
                    ],
                  ),
                ),
                if (_selectedImage != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.file(
                            _selectedImage!,
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.close, size: 20),
                          onPressed: () =>
                              setState(() => _selectedImage = null),
                        ),
                      ],
                    ),
                  ),

                SizedBox(height: 20),

                // Hiển thị nội dung tab đang chọn
                HomeTitleWidget(title: "Lịch sử hội thoại"),
                const SizedBox(height: 8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 10,
                    children: const [
                      RecentChip(label: "Job finder UX"),
                      RecentChip(label: "Graphic design copy"),
                      RecentChip(label: "Food planner"),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                HomeTitleWidget(title: "Khám phá thêm"),
                const SizedBox(height: 16),
                Row(
                  children: const [
                    Expanded(
                      child: AutomationCard(
                        icon: Icons.shopping_bag,
                        title: "Bussiness",
                        subtitle: "Based on your morning routine",
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: AutomationCard(
                        icon: Icons.fitness_center,
                        title: "Interviewing",
                        subtitle:
                            "AI writing function with advanced input for personlized",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                HomeTitleWidget(title: "Ghi chú"),
                const SizedBox(height: 8),
              ],
            ),
          ),

          const SizedBox(height: 12),
          SizedBox(
            height: 260,
            child: PageView.builder(
              controller: pageController,
              itemCount: 3,
              itemBuilder: (context, index) {
                return AnimatedBuilder(
                  animation: pageController,
                  builder: (context, child) {
                    double value = 1.0;
                    if (pageController.position.haveDimensions) {
                      value =
                          ((pageController.page ?? pageController.initialPage) -
                                  index)
                              .toDouble();
                      value = (1 - (value.abs() * 0.18)).clamp(0.85, 1.0);
                    }
                    return Transform.scale(
                      scale: value,
                      child: Opacity(opacity: value, child: child),
                    );
                  },
                  child: _buildStickyNoteByIndex(index),
                );
              },
            ),
          ),

          const SizedBox(height: 100),

          // ...rest of your home tab content...
        ],
      ),
    );
  }

  Widget _buildStickyNoteByIndex(int index) {
    switch (index) {
      case 0:
        return StickyNoteCard(
          title: 'Instagram Content Plan for Begginer',
          description:
              'in publishing and graphic design, lorem ipsum is a placeholder text. In publishing and graphic design, lorem ipsum is a placeholder text.',
          tags: ['#instagram', '#work'],
          time: 'Today at 6:30pm',
          icon: Icons.camera_alt,
          isFavorite: true,
          color: const Color(0xFFEDFBC1),
        );
      case 1:
        return StickyNoteCard(
          title: 'Some for Ux designer',
          description:
              'in publishing and graphic design, lorem ipsum is a placeholder text. In publishing and graphic design, lorem ipsum is a placeholder text.',
          tags: ['#rules', '#inspiration'],
          time: 'Today at 6:30pm',
          icon: Icons.design_services,
          color: const Color.fromARGB(255, 255, 255, 44),
        );
      case 2:
        return StickyNoteCard(
          title: 'AI Content Plan',
          description:
              'AI can help you generate content ideas and schedule posts easily.',
          tags: ['#ai', '#content'],
          time: 'Tomorrow at 9:00am',
          icon: Icons.smart_toy,
          color: const Color(0xFFD1F2EB),
        );
      default:
        return const SizedBox();
    }
  }
}
