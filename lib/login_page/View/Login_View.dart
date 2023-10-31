import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kostku_app/login_page/Controller/Login_Controller.dart';

class LoginPageView extends StatelessWidget {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.grey[200]!,
                      width: 2,
                    ),
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero, // Menghilangkan padding
                    icon: Icon(Icons.arrow_back, size: 36),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,

                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),
            Text(
              "Selamat datang kembali!",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 90,
            ),
            TextFormField(
              controller: controller.cEmail,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan Email",
                labelText: "Email",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: true,
              controller: controller.cPass,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan Password",
                labelText: "Password",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 50, // Tambahkan tinggi tombol
              child: ElevatedButton(
                onPressed: () {
                  controller.loginUser(
                    controller.cEmail!.text,
                    controller.cPass!.text,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2254D1), // Warna tombol login
                ),
                child: Text("Login"),
              ),
            ),

            TextButton(
              onPressed: () {
                Get.toNamed('/RegisterPage');
              },
              child: Text(
                "Tidak memiliki akun? Daftar",
                style: TextStyle(
                  color: Color(0xFF2254D1), // Warna teks Daftar
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
