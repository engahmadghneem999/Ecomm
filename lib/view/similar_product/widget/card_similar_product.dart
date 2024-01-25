import 'package:e_commerce/view/similar_product/widget/image_section_card.dart';
import 'package:e_commerce/view/similar_product/widget/text_section_card.dart';
import 'package:flutter/material.dart';

class CardSimilarProduct extends StatelessWidget {
  const CardSimilarProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      borderOnForeground: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextSectionCard(),
          ImageSectionCard(),
        ],
      ),
    );
  }
}
