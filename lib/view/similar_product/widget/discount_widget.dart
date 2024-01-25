import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../widget/custom_text.dart';

class DiscountWidget extends StatelessWidget {
  const DiscountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColor.yellowColor,
      ),
      padding: const EdgeInsets.all(4),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(
            text: ' % خصم 20',
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          Icon(
            Icons.discount,
            size: 20,
          ),
        ],
      ),
    );
  }
}
