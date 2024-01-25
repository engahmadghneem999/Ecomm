import 'package:e_commerce/view/marketing_campaigns/widget/buy_product_Button.dart';
import 'package:e_commerce/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../core/constant/color.dart';
import '../../core/utils/styles.dart';
import '../../widget/rate_row_widget.dart';
import '../similar_product/widget/favorite_widget.dart';
import '../similar_product/widget/remaining_widget.dart';

class MarketingCampaignsTab extends StatelessWidget {
  const MarketingCampaignsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const BuyProductButton(),


        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context,index){
            return SizedBox(
              width: 250,
              child: Card(
                color: Colors.white,
                borderOnForeground: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColor.backgroundBlueColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(18),
                            topRight: Radius.circular(18),
                          ),
                        ),
                        margin: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        child: Stack(
                          textDirection: TextDirection.rtl,
                          children: [
                            Center(
                              child: Image.asset(
                                "assets/images/headphones.jpg",
                                alignment: Alignment.center,
                                width: 100,
                                height: 180,
                              ),
                            ),
                            //favorite
                            const Positioned(
                              right: 5,
                              bottom: 5,
                              child: FavoriteWidget(),
                            ),
                            //remaining
                            const Positioned(
                              top: 5,
                              right: 5,
                              child: RemainingWidget(),
                            ),
                            const Positioned(
                              left: 5,
                              bottom: 5,
                              child: RateRowWidget(),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(18),
                            bottomLeft: Radius.circular(18),
                          ),
                          color: AppColor.backgroundlightGreyColor,
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: "اضف للسلة",
                              color: AppColor.purpleColor,
                              fontWeight: FontWeight.bold ,
                            ),
                            SizedBox(width: 5,),
                            Icon(
                              Icons.card_travel_sharp,
                              color: AppColor.purpleColor,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: CustomText(
                          text: 'سماعة رأس بولس اصدار 2022 عازل الصوت ',
                          maxLines: 2,
                          alignment: Alignment.centerRight,
                          textAlign: TextAlign.right,
                          textStyle: Styles.textCard,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColor.backgroundlightGreyColor,
                        ),
                        padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                        child: const CustomText(
                          text: 'حزمة تسويقية-منتج محاني',
                          color: AppColor.purpleColor,
                          fontSize: 12,
                          textAlign: TextAlign.center,
                          alignment: Alignment.center,
                        ),
                      ),
                      const Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          CustomText(
                            text: ' :الكمية المتوفرة',
                            color: AppColor.greyColor,
                            fontSize: 14,
                          ),
                          CustomText(
                            text: '4000',
                            color: AppColor.purpleColor,
                            fontSize: 14,
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey.shade200,
                        thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      const Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          CustomText(
                            text: '4000',
                            color: AppColor.greyColor,
                            fontSize: 18,
                            decoration: TextDecoration.lineThrough,
                          ),
                          CustomText(
                            text: ' ر.س',
                            color: AppColor.greyColor,
                            fontSize: 18,
                          ),
                        ],
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          const CustomText(
                            text: '3219.00',
                            color: AppColor.darkBlackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                          const CustomText(
                            text: ' ر.س',
                            color: AppColor.darkBlackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: AppColor.lightRedColor,
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: const CustomText(
                              text: '20%',
                              color: AppColor.redColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                              textAlign: TextAlign.center,
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        )

      ],
    );
  }
}
