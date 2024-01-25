import 'package:flutter/material.dart';
import '../constant/color.dart';
import '../constant/image_assets.dart';

class Styles {
  static TextStyle titleTextStyle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w900,
    color: AppColor.darkBlackColor,
    fontFamily: AppImageAsset.fontAvenirArabicMedium,
  );

  static TextStyle lableTabStyle = const TextStyle(
    fontSize: 16,
    color: AppColor.darkBlackColor,
    fontFamily: AppImageAsset.fontAvenirArabicMedium,
  );
  static TextStyle textCard = const TextStyle(
    fontSize: 14,
    color: AppColor.blackColor,
    fontFamily: AppImageAsset.fontAvenirArabicMedium,
  );

  static TextStyle formText = const TextStyle(
    fontSize: 14,
    color: AppColor.darkGreyColor,
    fontFamily: AppImageAsset.fontAvenirArabicMedium,
    fontWeight: FontWeight.w900,
  );

  static BoxDecoration backgroundImage(
      {String image = AppImageAsset.background}) {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          image,
        ),
        fit: BoxFit.fill,
      ),
    );
  }



  static RoundedRectangleBorder roundedBorderShap() {
    return const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    );
  }

}
