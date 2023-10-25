import 'package:get/get.dart';
import 'package:kostku_app/landing_page/LandingPage.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: '/LandingPage',
      page: () => LandingPage(),
    ),

  ];
}
