import 'package:get/get.dart';
import 'package:kostku_app/Register_Page/View/Register_View.dart';
import 'package:kostku_app/landing_page/LandingPage.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: '/LandingPage',
      page: () => LandingPage(),
    ),
    GetPage(
        name: '/RegisterPage',
        page:()=> RegisterView(),
    ),
  ];
}
