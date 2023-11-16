import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kostku_app/Register_Page/Controller/Register_Controller.dart';
import 'package:kostku_app/Routes/AppPages.dart';
import 'package:kostku_app/profile_page/Controller/Profile_Controller.dart';


void main() {
  // Instantiate and register controllers
  Get.put(RegisterController());
  Get.put(ProfileController());

  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'KostKu Mobile Apps',
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      initialRoute: '/LandingPage',


    );
  }
}

