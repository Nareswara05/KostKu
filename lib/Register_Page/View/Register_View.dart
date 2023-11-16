import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kostku_app/Register_Page/Controller/Register_Controller.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final RegisterController registerController = Get.put(RegisterController());
    Color fillColor = Colors.grey[200]!;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Stack(
                alignment: Alignment.center,
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
                    child: Center(
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.arrow_back, size: 36),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                    ),
                  ),

                ],
              ),

              Text(
                "Selamat Datang",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Silahkan lengkapi informasi dibawah ini untuk melanjutkan.",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 40),
              TextField(
                controller: registerController.nameController,
                decoration: InputDecoration(
                  labelText: "Nama",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  filled: true,
                  fillColor: fillColor,
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: registerController.emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  filled: true,
                  fillColor: fillColor,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: registerController.phoneController,
                decoration: InputDecoration(
                  labelText: "No HP",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  filled: true,
                  fillColor: fillColor,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: registerController.passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Kata Sandi",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  filled: true,
                  fillColor: fillColor,
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF2254D1),
                  ),
                  onPressed: () => registerController.onSubmit(),
                  child: Text("Daftar"),
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.offNamed('/LoginPage');
                },
                child: Text(
                  "Sudah memiliki akun? Masuk",
                  style: TextStyle(
                    color: Color(0xFF2254D1), // Warna teks Daftar
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
