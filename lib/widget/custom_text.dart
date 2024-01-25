import 'package:flutter/material.dart';

import '../core/constant/image_assets.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;
  final TextDecoration? decoration;
  final TextAlign? textAlign;
  final String fontFamily;
  final AlignmentGeometry alignment;
  final TextOverflow textOverflow;
  final TextStyle? textStyle;
  final int maxLines;

  const CustomText({
    Key? key, // Corrected key parameter
    this.text = '',
    this.fontSize = 16,
    this.color,
    this.fontWeight = FontWeight.w500,
    this.decoration,
    this.textAlign,
    this.fontFamily = AppImageAsset.fontAvenirArabicMedium,
    this.alignment = Alignment.centerRight,
    this.textOverflow = TextOverflow.ellipsis,
    this.textStyle,
    this.maxLines = 1,
  }) : super(key: key); // Corrected key assignment

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Text(
        text,
        textAlign: textAlign,
        overflow: textOverflow,
        maxLines: maxLines,
        style: textStyle ??
            TextStyle(
              decoration: decoration,
              height: 1.3,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontFamily: fontFamily,
              color: color,
            ),
      ),
    );
  }
}
