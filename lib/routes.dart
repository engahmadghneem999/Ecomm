import 'package:e_commerce/view/home/screen/home_screen.dart';
import 'package:e_commerce/view/product_details/screens/product_details.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [

  GetPage(
    name: "/home",
    page: () =>  HomeScreen(),
    transition: Transition.upToDown,
  ),
  GetPage(
    name: "/productDetails",
    page: () => ProductDetails(),
    transition: Transition.upToDown,
  ),
];
