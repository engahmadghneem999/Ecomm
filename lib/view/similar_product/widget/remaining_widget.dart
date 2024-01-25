import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../widget/custom_text.dart';

class RemainingWidget extends StatelessWidget {
  const RemainingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColor.redColor,
      ),
      padding: const EdgeInsets.all(8),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(
            text: 'متبقي 02:30س ',
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          Icon(
            Icons.access_time,
            size: 20,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
