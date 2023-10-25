import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kostku_app/Routes/AppPages.dart';

void main() {
  runApp(const MyApp());
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

