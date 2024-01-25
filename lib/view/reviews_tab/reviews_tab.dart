import 'package:e_commerce/core/constant/color.dart';
import 'package:e_commerce/view/home/widget/tapbar_widget.dart';
import 'package:e_commerce/widget/custom_button.dart';
import 'package:e_commerce/widget/rate_row_widget.dart';
import 'package:flutter/material.dart';

import '../../core/utils/styles.dart';
import '../../widget/custom_text.dart';
import '../similar_product/widget/card_similar_product.dart';

class ReviewsTab extends StatelessWidget {
  const ReviewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

       // TapBarWidget(),
        Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: 'التقييمات',
              textStyle: Styles.titleTextStyle,
            ),
            CustomElevatedButton(
              text: 'عرض المزيد',
              textColor: AppColor.purpleColor,
              buttonColor: AppColor.backgroundlightGreyColor,
              withIcon: false,
              onPressed: () {}, fontsize: 16,
            ),
          ],
        ),
        Card(
          color: Colors.white,
          borderOnForeground: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              textDirection: TextDirection.rtl,
              children: [
                Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'عبدالله العتيبي',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColor.darkBlackColor,
                    ),
                    CustomText(
                      text: '11/04/2022',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColor.darkBlackColor,
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.star,
                      color: AppColor.yellowColor,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColor.yellowColor,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColor.yellowColor,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColor.yellowColor,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColor.yellowColor,
                    ),
                    CustomText(
                      text: '4.5',
                      fontSize: 14,
                      color: AppColor.darkBlackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                SizedBox(height: 8),
                CustomText(
                  text:
                      'تطبيق أكثر من رائع وسرعة وسلاسة بمنتهى السهولة والامان. تطبيق أكثر من رائع وسرعة وسلاسة.',
                  fontSize: 12,
                  maxLines: 2,
                  textAlign: TextAlign.right,
                  color: AppColor.blackColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
