import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:kostku_app/Register_Page/Controller/Register_Controller.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final RegisterController registerController = Get.put(RegisterController());
    Color fillColor = Colors.grey[200]!;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    icon: Icon(Icons.arrow_back_ios_rounded, size: 20),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
                SizedBox(height: 25,),

                Text(
                  "Selamat Datang",
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Silahkan lengkapi informasi dibawah ini untuk melanjutkan.",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[500]
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
                      padding: EdgeInsets.symmetric(vertical: 18),
                      backgroundColor: Color(0xFF2254D1),
                    ),
                    onPressed: () => registerController.onSubmit(),
                    child: Text("Daftar", style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                    ),),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.offNamed('/LoginPage');
                  },
                  child: Text(
                    "Sudah memiliki akun? Masuk",
                    style: GoogleFonts.poppins(
                      color: Color(0xFF2254D1), // Warna teks Daftar
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
