import 'package:e_commerce/core/constant/image_assets.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../core/utils/styles.dart';
import '../../../widget/custom_button.dart';
import '../../../widget/custom_text.dart';
import '../../../widget/custom_text_form_filed.dart';
import '../../home/widget/tapbar_widget.dart';
import '../widget/build_dropdown_widget.dart';

class OptionsTab extends StatelessWidget {
   OptionsTab({super.key});

  String selectedValue = 'Option 1';

  List<String> dropdownItems = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
           // TapBarWidget(),
            CustomText(
              text: 'الخيارات',
              textStyle: Styles.titleTextStyle,
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildDropdownWidget(labelText: 'المقاس'),
                 SizedBox(width: 8,),
                buildDropdownWidget(labelText: 'المقاس'),
                SizedBox(width: 8,),
                buildDropdownWidget(labelText: 'اللون')
              ],
            ),
            SizedBox(height: 10,),
            CustomText(
              text: 'الإضافات',
              textStyle: Styles.titleTextStyle,
            ),
            CustomText(
              text: 'عنوان نصي + (200.00 ر.س)',
              textStyle: Styles.formText,
            ),
            CustomTextForm(
              hintText: 'مثال',
            ),
            CustomText(
              text: 'عنوان نصي + (200.00 ر.س)',
              textStyle: Styles.formText,
            ),
            CustomTextForm(
              hintText: 'صورة الحوالة',
            ),
            CustomText(
              text: 'صورة الحوالة',
              textStyle: Styles.formText,
            ),
            CustomTextForm(
              hintText: 'الحد الاقصي لحجم الملف 5MB ارفق صورة الحوالة',
              prefixWidget: Container(
                width: 60,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColor.purpleColor,
                ),
                child: CustomText(
                  text: "ارفق",
                  color: Colors.white,
                  fontSize: 12,
                  alignment: Alignment.center,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            CustomText(
              text: 'التاريخ + (200.00 ر.س)',
              textStyle: Styles.formText,
            ),
            CustomTextForm(
              hintText: 'عنوان نصي',
              prefixWidget: Container(
                width: 60,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.asset(
                  AppImageAsset.date_icon,
                  width: 30,
                  height: 30,
                ),
              ),
            ),
            CustomText(
              text: 'الوقت + (200.00 ر.س)',
              textStyle: Styles.formText,
            ),
            CustomTextForm(
                hintText: 'عنوان نصي',
                prefixWidget: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: IconButton(
                    icon: Icon(Icons.access_time),
                    onPressed: () {},
                  ),
                )),
            Center(
              child: CustomElevatedButton(
                width: 200,
                text: 'عرض اقل',
                textColor: AppColor.purpleColor,
                buttonColor: AppColor.backgroundlightGreyColor,
                withIcon: false,
                onPressed: () {}, fontsize: 16,
              ),
            ),
          ],
        ),
      ),
    );



  }}
