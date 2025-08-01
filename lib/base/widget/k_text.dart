import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class KText extends ConsumerWidget {
  final String? text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? letterSpacing;
  final int? maxLines;
  final TextOverflow overflow;
  final TextAlign textAlign;
  final FontStyle fontStyle;
  final TextDecoration? textDecoration;
  final Color? decorationColor;
  final String? fontFamily;
  final double? lineHeight;

  const KText({
    super.key,
    this.color = Colors.black87,
    this.text = "",
    this.textAlign = TextAlign.start,
    this.overflow = TextOverflow.visible,
    this.fontSize = 20,
    this.letterSpacing = 0.0,
    this.maxLines,
    this.fontWeight = FontWeight.w500,
    this.fontStyle = FontStyle.normal,
    this.textDecoration = TextDecoration.none,
    this.decorationColor = Colors.grey,
    this.fontFamily = 'Mulish',
    this.lineHeight,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      (text == null || text == 'null') ? "" : text!,
      textAlign: textAlign,
      textScaler: TextScaler.noScaling,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        decoration: textDecoration,
        decorationColor: decorationColor,
        fontFamily: fontFamily,
        height: lineHeight,
      ),
    );
  }
}
