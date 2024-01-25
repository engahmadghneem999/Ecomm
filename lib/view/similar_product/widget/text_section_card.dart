import 'package:e_commerce/widget/rate_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../core/utils/styles.dart';
import '../../../widget/custom_button.dart';
import '../../../widget/custom_text.dart';

class TextSectionCard extends StatelessWidget {
  const TextSectionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomText(
              text: 'سماعة رأس بولس اصدار 2022 عازل الصوت ',
              textStyle: Styles.textCard,
              textAlign: TextAlign.right,
              maxLines: 2,
            ),
           RateRowWidget(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: '4000.00',
                  fontSize: 15,
                  color: AppColor.greyColor,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.lineThrough,
                ),
                CustomText(
                  text: 'ر.س3219.00',
                  fontSize: 15,
                  textAlign: TextAlign.right,
                  color: AppColor.blackColor,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            CustomElevatedButton(
              width: Get.width,
              text: 'أضف للسلة',
              textColor: AppColor.purpleColor,

              buttonColor: AppColor.backgroundlightGreyColor,
              onPressed: () {}, fontsize: 16,

            ),
          ],
        ),
      ),
    );
  }
}
