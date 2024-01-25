import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class FavoriteWidget extends StatelessWidget {
  const FavoriteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          width: 2,
          color: AppColor.backgroundBlueColor,
        ),
      ),
      padding: const EdgeInsets.all(8),
      child: const Icon(
        Icons.favorite,
        color: AppColor.purpleColor,
      ),
    );
  }
}
