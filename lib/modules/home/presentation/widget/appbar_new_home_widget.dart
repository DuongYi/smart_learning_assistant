import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smart_learning_assistant/base/widget/k_text.dart';
import 'package:smart_learning_assistant/constant/assets_path.dart';
import 'package:smart_learning_assistant/core/service/theme/theme.dart';

class AppBarNewHomeWidget extends ConsumerWidget {
  const AppBarNewHomeWidget({super.key});

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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                KText(
                  text: 'Chào buổi sáng,',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: isDark ? Color(0xFFB6FFB0) : Colors.white,
                ),

                KText(
                  text: 'Đức Dương',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: isDark ? Colors.white : Colors.black54,
                ),
              ],
            ),
          ),
          // Avatar
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              shape: BoxShape.circle,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: isDark ? Colors.white.tone(40) : Colors.grey[200],
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white24,
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: CircleAvatar(
                radius: 32,
                backgroundImage: CachedNetworkImageProvider(
                  'https://cdn11.dienmaycholon.vn/filewebdmclnew/public/userupload/files/Image%20FP_2024/avatar-dep-cho-nam-2.jpg', // Replace with your image URL
                ),
                foregroundImage: AssetImage(
                  AssetPath.defaultAvatar, // Placeholder image
                ),
                child: Icon(
                  Icons.person,
                  size: 30,
                  color: isDark ? Colors.white : Colors.grey[800],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
