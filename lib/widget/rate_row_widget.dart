import 'package:e_commerce/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../core/constant/color.dart';

class RateRowWidget extends StatelessWidget {
  const RateRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomText(
            text: '4.5',
            fontSize: 14,
            color: AppColor.darkBlackColor,
            fontWeight: FontWeight.bold,
          ),
          Icon(
            Icons.star,
            color: AppColor.yellowColor,
          ),
        ],
      ),
    );
  }
}
