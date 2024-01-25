
import 'package:e_commerce/view/product_details/widget/details_widget.dart';

import 'package:flutter/material.dart';


class ProductDetails extends StatefulWidget {
   ProductDetails({Key? key,  this.pageController,  this.currentPageIndex}) : super(key: key);
  final PageController? pageController;
  late final int? currentPageIndex;
  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {

    return    Padding(
      padding: const EdgeInsets.all(12.0),
      child: SafeArea(child: DeatilsWidget())
    );
  }
}
