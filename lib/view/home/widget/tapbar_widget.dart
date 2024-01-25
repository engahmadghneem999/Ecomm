import 'package:flutter/material.dart';
import '../../../core/constant/color.dart';
import '../../../core/utils/styles.dart';


class TapBarWidget extends StatefulWidget {
  final ValueChanged<int> onTabChanged;

  const TapBarWidget({Key? key, required this.onTabChanged}) : super(key: key);

  @override
  _TapBarWidgetState createState() => _TapBarWidgetState();
}

class _TapBarWidgetState extends State<TapBarWidget> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        widget.onTabChanged(_tabController.index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Column(
        children: [
          Container(
            color: AppColor.backgroundBlueColor, // Set the color you desire
            child: TabBar(
              controller: _tabController,
              physics: const BouncingScrollPhysics(),
              labelColor: AppColor.purpleColor,
              unselectedLabelColor: AppColor.blackColor,
              labelStyle: Styles.lableTabStyle,
              indicatorColor: AppColor.purpleColor,
              isScrollable: true,
              tabs: [
                const Tab(text: "تفاصيل المنتج"),
                const Tab(text: "التقييمات"),
                const Tab(text: "المنتجات المشابهة"),
                const Tab(text: "الحملات التسويقية"),
                const Tab(text: "الإضافات"),
                const Tab(text: "الخيارات"),

              ],
            ),
          ),
          SizedBox(height: 8), // Adjust the spacing as needed
        ],
      ),
    );
  }
}