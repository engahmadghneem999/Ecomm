import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../widget/custom_text.dart';

class BuyProductButton extends StatelessWidget {
  const BuyProductButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColor.lightCyanColor,
      ),
      width: Get.width,
      padding: const EdgeInsets.symmetric(vertical: 12),
      //height: 80,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: "اشتري المنتج و احصل على قطعة إضافية مجانا.",
            color: AppColor.cyanColor,
            fontSize: 12,
          ),
          Icon(
            Icons.card_giftcard,
            color: AppColor.cyanColor,
          )
        ],
      ),
    );
  }
}
