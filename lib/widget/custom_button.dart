import 'package:e_commerce/core/constant/color.dart';
import 'package:e_commerce/widget/custom_text.dart';
import 'package:flutter/material.dart';


class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    this.buttonColor = AppColor.purpleColor,
    this.textColor = Colors.white,
    required this.text,
    required this.onPressed,
    this.iconData,
    this.padding = 10,
    this.width,
    this.withIcon = true,
    required this.fontsize

  }) : super(key: key);
  final Color buttonColor;
  final Color textColor;
  final String text;
  final void Function() onPressed;
  final IconData? iconData;
  final double padding;
  final double? width;
  final bool withIcon;
  final double fontsize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: buttonColor,
          padding: EdgeInsets.all(padding),
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Wrap(
          children: [
            CustomText(
              text: text,
              alignment: Alignment.center,
              fontSize: fontsize,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w800,
              color: textColor,
              textOverflow: TextOverflow.visible,
            ),
            withIcon
                ? Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                  )
                : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
