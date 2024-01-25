import 'package:e_commerce/view/additions/screen/addition_tab.dart';
import 'package:e_commerce/view/similar_product/similar_products_tab.dart';
import 'package:e_commerce/widget/custom_appbar.dart';
import 'package:flutter/material.dart';
import '../../../core/constant/color.dart';
import '../../marketing_campaigns/marketing_campaigns_tab.dart';
import '../../options/screen/option_tab.dart';
import '../../product_details/screens/product_details.dart';
import '../../reviews_tab/reviews_tab.dart';
import '../widget/tapbar_widget.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  final PageController pageController = PageController();
  int currentPageIndex = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
    pageController.addListener(_pageListener);
  }

  void _pageListener() {
    final newPageIndex = pageController.page!.round();
    if (newPageIndex != currentPageIndex) {
      setState(() {
        currentPageIndex = newPageIndex;
        _tabController.animateTo(currentPageIndex);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: currentPageIndex == 0
          ? null
          : AppBar(
        backgroundColor: AppColor.backgroundBlueColor,
        title: CustomAppBar(),
      ),
      body: Column(
        children: [
          if (currentPageIndex != 0) // Show TapBarWidget unless the current page is ReviewsTab
            TapBarWidget(
              onTabChanged: (index) {
                pageController.animateToPage(
                  index,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
                setState(() {
                  currentPageIndex = index;
                  _tabController.animateTo(currentPageIndex);
                });
              },
            ),
          Expanded(
            child: PageView(
              controller: pageController,
              scrollDirection: Axis.vertical,
              onPageChanged: (index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
              children: [
                ProductDetails(
                  pageController: pageController,
                  currentPageIndex: currentPageIndex,
                ),
                ReviewsTab(),
                SimilarProductsTab(),
                MarketingCampaignsTab(),
                AdditionTab(),
                OptionsTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}