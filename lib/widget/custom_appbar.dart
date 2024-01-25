import 'package:e_commerce/core/constant/color.dart';
import 'package:flutter/material.dart';

import '../core/utils/styles.dart';
import 'custom_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.file_upload_outlined,
            color: Colors.black87,
          ),
        ),
        Spacer(),
        CustomText(
          text: "هودي بتصميم كاجوال",
          textStyle: Styles.titleTextStyle,
          textAlign: TextAlign.center,
          alignment: Alignment.center,
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_forward_ios,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
