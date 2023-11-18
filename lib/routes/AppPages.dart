import 'package:get/get.dart';
import 'package:kostku_app/Home_Page/View/Home_Jakarta_View.dart';
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
    ),
    GetPage(
        name: '/RegisterPage',
        page:()=> RegisterView(),
    ),
    GetPage(
        name: '/LoginPage',
        page:()=> LoginPageView()
    ),
    GetPage(name: '/HomePage',
        page:()=> HomeJakartaView()
    ),
    GetPage(
        name: '/ProfilePage',
        page:()=> ProfilePage(),
    ),
    GetPage(
        name: '/LikePage',
        page:()=> LikeView()
    ),
    GetPage(
        name: '/InputPayment',
        page:()=> InputPaymentPage()
    ),
    GetPage(
        name: '/PaymentBill',
        page:()=> PaymentBill()
    )
  ];
}
