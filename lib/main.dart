import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/bindings/home_bindigs.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.INITIAL,
      defaultTransition: Transition.fade,
      initialBinding: HomeBinding(),
      getPages: AppPages.routes,
    ),
  );
}
