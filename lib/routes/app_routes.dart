import 'package:get/get.dart';
import 'package:getx_practice/views/home_page.dart';
import 'package:getx_practice/views/second_page.dart';

class AppRoutes {
  static final List<GetPage> routes = [
    GetPage(name: '/homeScreen', page: () => HomePage()),
    GetPage(name: '/secondPage', page: () => SecondPage()),
  ];
}
