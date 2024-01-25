import 'package:e_commerce/view/similar_product/widget/discount_widget.dart';
import 'package:e_commerce/view/similar_product/widget/favorite_widget.dart';
import 'package:e_commerce/view/similar_product/widget/remaining_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class ImageSectionCard extends StatelessWidget {
  const ImageSectionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.backgroundBlueColor,
        borderRadius: BorderRadius.circular(18),
      ),
      width: 160,
      margin: const EdgeInsets.all(8),
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
          //discount
          const Positioned(right: 5, top: 5, child: const DiscountWidget()),
          const SizedBox(width: 2),
          //favorite
          Positioned(left: 5, top: 5, child: const FavoriteWidget()),
          //remaining
          Positioned(bottom: 5, right: 5, child: const RemainingWidget()),
        ],
      ),
    );
  }
}
