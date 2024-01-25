import 'package:e_commerce/core/constant/color.dart';
import 'package:e_commerce/view/similar_product/widget/card_similar_product.dart';
import 'package:e_commerce/view/similar_product/widget/discount_widget.dart';
import 'package:e_commerce/view/similar_product/widget/favorite_widget.dart';
import 'package:e_commerce/view/similar_product/widget/image_section_card.dart';
import 'package:e_commerce/view/similar_product/widget/remaining_widget.dart';
import 'package:e_commerce/view/similar_product/widget/text_section_card.dart';
import 'package:e_commerce/widget/custom_button.dart';
import 'package:e_commerce/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../core/utils/styles.dart';
import '../home/widget/tapbar_widget.dart';

class SimilarProductsTab extends StatelessWidget {
  const SimilarProductsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomText(
          text: 'منتجات مشابهة',
          textStyle: Styles.titleTextStyle,
        ),
        CardSimilarProduct(),

      ],
    );
  }
}
