import 'package:e_commerce/widget/custom_button.dart';
import 'package:e_commerce/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../core/constant/color.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      height: 100,
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomText(
                text: 'الإجمالي',
                color: AppColor.darkBlackColor,
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
              CustomText(
                text: 'ر.س' + '3219.00',
                color: AppColor.darkBlackColor,
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ],
          ),
          CustomElevatedButton(
            text: 'أضف للسلة',
            onPressed: () {},
            withIcon: true, fontsize: 16,
          ),
        ],
      ),
    );
  }
}
