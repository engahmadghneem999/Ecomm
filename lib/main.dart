import 'package:e_commerce/binding/initial_bindings.dart';
import 'package:e_commerce/core/constant/routes.dart';
import 'package:e_commerce/core/service/service.dart';
import 'package:e_commerce/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  MyServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce',
      initialBinding: InitialBindings(),
      initialRoute: AppRoute.home,
      getPages: routes,
    );
  }
}

