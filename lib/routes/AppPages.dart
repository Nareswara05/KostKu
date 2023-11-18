import 'package:get/get.dart';
import 'package:kostku_app/Home_Page/Controller/Home_Bandung_Controller.dart';
import 'package:kostku_app/Home_Page/View/Home_Bandung_View.dart';
import 'package:kostku_app/Home_Page/View/Home_Jakarta_View.dart';
import 'package:kostku_app/Home_Page/View/Home_Semarang_View.dart';
import 'package:kostku_app/Like_Page/View/Like_View.dart';
import 'package:kostku_app/Register_Page/View/Register_View.dart';
import 'package:kostku_app/landing_page/LandingPage.dart';
import 'package:kostku_app/login_page/View/Login_View.dart';
import 'package:kostku_app/payment/payment-bill/View/Payment_Bill_View.dart';
import 'package:kostku_app/payment/payment_input/View/Payment_Input_View.dart';


import 'package:kostku_app/profile_page/View/Profile_Page.dart';


class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: '/LandingPage',
      page: () => LandingPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: '/RegisterPage',
      page: () => RegisterView(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/LoginPage',
      page: () => LoginPageView(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: '/HomePage',
      page: () => HomeJakartaView(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: '/HomePage/Bandung',
      page: () => HomeBandungView(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: '/HomePage/Semarang',
      page: () => HomeSemarangView(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: '/ProfilePage',
      page: () => ProfilePage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: '/LikePage',
      page: () => LikeView(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: '/InputPayment',
      page: () => InputPaymentPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: '/PaymentBill',
      page: () => PaymentBill(),
      transition: Transition.fadeIn,
    ),
  ];
}
