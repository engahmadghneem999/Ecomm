import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../core/utils/styles.dart';
import '../../../widget/custom_text.dart';

class BlueContainerWidget extends StatelessWidget {
  const BlueContainerWidget({
    super.key,
    required this.text,
    this.decoration = TextDecoration.none,
    this.color = AppColor.blueLightColor,
  });
  final String text;
  final TextDecoration decoration;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(16), color: color),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: CustomText(
        text: text,
        color: AppColor.blackColor,
        fontSize: 12,
        textAlign: TextAlign.right,
        decoration: decoration,
      ),
    );
  }
}
