import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smart_learning_assistant/base/widget/k_text.dart';

class AppBarHomeWidget extends ConsumerWidget {
  const AppBarHomeWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final paddingSafe = MediaQuery.of(context).padding;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: EdgeInsets.only(
        top: paddingSafe.top + 8,
        // left: 16,
        // right: 16,
        bottom: 12,
      ),
      color: Colors.transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Avatar
          CircleAvatar(
            radius: 24,
            backgroundImage: CachedNetworkImageProvider(
              'https://cdn11.dienmaycholon.vn/filewebdmclnew/public/userupload/files/Image%20FP_2024/avatar-dep-cho-nam-2.jpg', // Replace with your image URL
            ),
            foregroundImage: CachedNetworkImageProvider(
              'https://cdn11.dienmaycholon.vn/filewebdmclnew/public/userupload/files/Image%20FP_2024/avatar-dep-cho-nam-2.jpg', // Replace with your image URL
            ),
            child: Icon(
              Icons.person,
              size: 30,
              color: isDark ? Colors.white : Colors.grey[800],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                KText(
                  text: 'Vũ Đức Dương',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: isDark ? Colors.white : Colors.black87,
                ),
                const SizedBox(height: 6),
                KText(
                  text: 'Chào buổi sáng!',
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: isDark ? Colors.white : Colors.black54,
                ),
              ],
            ),
          ),
          // Notification Icon
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: isDark ? Colors.white : Colors.black87,
            ),
            onPressed: () {
              // Handle notification tap
            },
          ),
        ],
      ),
    );
  }
}
