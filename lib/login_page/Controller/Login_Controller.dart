import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  TextEditingController? cEmail;
  TextEditingController? cPass;
  RxBool isLoading = false.obs;
  late final SharedPreferences prefs;
  RxBool isSuccess = false.obs;

  @override
  void onInit() {
    super.onInit();
    cEmail = TextEditingController();
    cPass = TextEditingController();
  }

  loginUser(String email, password) async {
    final baseUrl = 'https://reqres.in/api/login';
    isLoading.value = true;
    final response = await http.post(
      Uri.parse(baseUrl),
      body: {
        'email': cEmail!.text,
        'password': cPass!.text,
      },
    );
    try {
      if (response.statusCode == 200) {
        final Map<String, dynamic> getToken = jsonDecode(response.body);
        final token = getToken['token'];
        print('Token : $token');
        Get.snackbar("Selamat", "Login Sukses");
        prefs = await SharedPreferences.getInstance();
          if (email == "eve.holt@reqres.in" && password == "cityslicka") {
          await prefs.setString('username', token.toString());
          Get.toNamed('/HomePage'); 
          isSuccess.value = true;
        }   
        isLoading.value = false;
      } else {
        Get.snackbar("Maaf", "Gagal Login");
      }
    } catch (e) {
      print(e);
    }
  }
}

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/', // Rute awal
    getPages: [
      GetPage(name: '/', page: () => LoginScreen()),
      GetPage(name: '/HomePage', page: () => HomeScreen()),
    ],
  ));
}

class LoginScreen extends StatelessWidget {
  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    // Tampilan halaman login
    return Scaffold(
      // ...
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Tampilan halaman beranda
    return Scaffold(
      // ...
    );
  }
}
