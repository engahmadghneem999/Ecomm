import 'package:e_commerce/view/product_details/widget/blue_container_widget.dart';
import 'package:e_commerce/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/image_assets.dart';
import '../../../core/utils/styles.dart';
import '../../../widget/custom_button.dart';


  class DeatilsWidget extends StatelessWidget {
    const DeatilsWidget({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return SingleChildScrollView(
        child: Column(
          children: [
            Positioned(
                right: 5,
                left: 5,
                top: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: IconButton(
                        icon: Icon(Icons.file_upload_outlined),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: () {},
                      ),
                    ),
                  ],
                )),
            Center(
              child: Image.asset(
                AppImageAsset.dress,
              ),
            ),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                BlueContainerWidget(
                  text: '10K :عدد مرات الشراء',
                ),
                BlueContainerWidget(
                  text: 'الكمية المتبقية: 1000',
                ),
              ],
            ),
            CustomText(
              text:
              'هودي بتصميم كاجوال مصنوع من مزيج قطني ومزود بأكمام طويلة للرجال',
              textStyle: Styles.titleTextStyle,
              maxLines: 2,
              fontSize: 14,
              textAlign: TextAlign.right,
              alignment: Alignment.centerRight,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BlueContainerWidget(
                      text: 'خصم 20%',
                      color: AppColor.orangeLightColor,
                    ),
                    BlueContainerWidget(
                      text: '200.00 ر.س',
                      decoration: TextDecoration.lineThrough,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '150.0',
                            style: Styles.titleTextStyle,
                          ),
                          TextSpan(
                            text: 'ر.س',
                            style: Styles.titleTextStyle,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColor.purpleColor),
                      ),
                      child: CustomElevatedButton(
                        width: 100,
                        text: 'عرض التقييمات',
                        textColor: AppColor.purpleColor,
                        buttonColor: AppColor.backgroundlightGreyColor,
                        withIcon: false,
                        onPressed: () {},
                        fontsize: 10,
                      ),
                    ),
                    Spacer(),
                    CustomText(
                      text: '(300 تقييم)',
                      fontSize: 14,
                      color: AppColor.greyColor,
                      fontWeight: FontWeight.bold,
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
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(
              text: 'تفاصيل المنتج',
              textStyle: Styles.titleTextStyle,
              maxLines: 2,
              fontSize: 14,
              textAlign: TextAlign.right,
              alignment: Alignment.centerRight,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                      Border.all(color: AppColor.borderFormColor),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomText(
                        text:
                        'صُمم الهودي بتصميم سترة من ريد تيب كعلامة تجارية تمثل نمط حياة للجيل القادم المتطلع والطموح.\n صُمم الهودي بتصميم سترة من ريد تيب كعلامة تجارية.',
                        // textStyle: Styles.titleTextStyle,
                        maxLines: 10,
                        fontSize: 15,
                        textAlign: TextAlign.right,
                        alignment: Alignment.centerRight,
                        color: AppColor.greyColor,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                      Border.all(color: AppColor.borderFormColor),
                    ),
                    child: CustomElevatedButton(
                      width: 100,
                      text: 'الوصف المختصر',
                      textColor: AppColor.darkGreyColor,
                      buttonColor: AppColor.blueLightColor,
                      withIcon: false,
                      onPressed: () {},
                      fontsize: 8,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: SingleChildScrollView(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border:
                        Border.all(color: AppColor.borderFormColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              height: 150,
                              child: SingleChildScrollView(
                                child: CustomText(
                                  text:
                                  'صُمم الهودي بتصميم سترة من ريد تيب كعلامة تجارية تمثل نمط حياة للجيل القادم المتطلع والطموح.\n صُمم الهودي بتصميم سترةصُمم الهودي بتصميم سترة من ريد تيب كعلامة تجارية تمثل نمط حياة للجيل القادم المتطلع والطموح.\n صُمم الهودي بتصميم سترةصُمم الهودي بتصميم سترة من ريد تيب كعلامة تجارية تمثل نمط حياة للجيل القادم المتطلع والطموح.\n صُمم الهودي بتصميم سترةصُمم الهودي بتصميم سترة من ريد تيب كعلامة تجارية تمثل نمط حياة للجيل القادم المتطلع والطموح.\n صُمم الهودي بتصميم سترة من ريد تيب كعلامة تجارية.',
                                  maxLines: 4,
                                  fontSize: 15,
                                  textAlign: TextAlign.right,
                                  alignment: Alignment.centerRight,
                                  color: AppColor.greyColor,
                                ),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 100,
                              child: CustomElevatedButton(
                                width: 100,
                                text: 'اقرأ كل الوصف',
                                textColor: AppColor.purpleColor,
                                buttonColor:
                                AppColor.backgroundlightGreyColor,
                                withIcon: false,
                                onPressed: () {},
                                fontsize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                      Border.all(color: AppColor.borderFormColor),
                    ),
                    child: CustomElevatedButton(
                      width: 100,
                      text: 'الوصف الأساسي',
                      textColor: AppColor.darkGreyColor,
                      buttonColor: AppColor.blueLightColor,
                      withIcon: false,
                      onPressed: () {},
                      fontsize: 8,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColor.borderFormColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomText(
                          text: 'أو قسم فاتورتك على 3 دفعات بقيمة 100.00 ر.س بدون فوائد عرض المزيد',
                          maxLines: 10,
                          fontSize: 15,
                          textAlign: TextAlign.right,
                          alignment: Alignment.centerRight,
                          color: AppColor.greyColor,
                        ),
                      ),
                      SizedBox(width:10,),
                      Image.asset(
                        AppImageAsset.fatora_icon1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColor.borderFormColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomText(
                          text: 'أو قسم فاتورتك على 3 دفعات بقيمة 100.00 ر.س بدون فوائد عرض المزيد',
                          maxLines: 10,
                          fontSize: 15,
                          textAlign: TextAlign.right,
                          alignment: Alignment.centerRight,
                          color: AppColor.greyColor,
                        ),
                      ),
                      SizedBox(width:10,),
                      Image.asset(
                        AppImageAsset.fatora_icon2,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 30,
                  width: 100,
                  child: CustomElevatedButton(
                    width: 100,
                    text: 'معفى من الضريبة',
                    textColor: AppColor.darkBlackColor,
                    buttonColor:
                    AppColor.backgroundlightGreyColor,
                    withIcon: false,
                    onPressed: () {},
                    fontsize: 10,
                  ),
                ),SizedBox(width: 10,),

                Container(
                  height: 30,
                  width: 150,
                  child: CustomElevatedButton(
                    width: 100,
                    text: 'Z.166193.16653 : رمز المنتج ',
                    textColor: AppColor.darkBlackColor,
                    buttonColor:
                    AppColor.backgroundlightGreyColor,
                    withIcon: false,
                    onPressed: () {},
                    fontsize: 10,
                  ),
                ),
              ],
            ),

          ],
        ),
      );
    }
  }
