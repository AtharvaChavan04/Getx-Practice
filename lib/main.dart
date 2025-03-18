import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/routes/app_routes.dart';
import 'package:getx_practice/utils/languages.dart';
import 'package:getx_practice/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Practice',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      locale: Locale('en', 'US'),
      translations: Languages(),
      fallbackLocale: Locale('en', 'US'),
      getPages: AppRoutes.routes,
      home: const HomePage(),
    );
  }
}
