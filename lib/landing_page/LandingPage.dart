import 'package:flutter/material.dart';
import 'package:kostku_app/helpers/utils.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final buttonWidth = screenWidth * 0.4; // Setengah dari lebar layar

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 60,),
                Image.asset(
                  logo,
                  scale: 0.8,
                ),
                SizedBox(height: 45.0),
                Text(
                  "Aplikasi pencari kos nomer 1 di Indonesia",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 30.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Selamat datang di aplikasi pencari kos kami! Kami akan membantu Anda menemukan kos yang sesuai dengan kebutuhan Anda.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                ),
               SizedBox(height: 150,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => Get.offNamed('/LoginPage'),
                        child: Text(
                          "Login",
                          style: GoogleFonts.poppins(fontSize: screenWidth * 0.04, fontWeight: FontWeight.w500),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: screenWidth * 0.04, horizontal: screenWidth * 0.1),
                          backgroundColor: Color(0xFF2254D1),
                          elevation: 0,

                        ),
                      ),
                    ),
                    SizedBox(width: 16.0), // Spasi antara tombol
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => Get.offNamed('/RegisterPage'),
                        child: Text(
                          "Register",
                          style: GoogleFonts.poppins(fontSize: screenWidth * 0.04, color: Colors.black, fontWeight: FontWeight.w500
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: screenWidth * 0.04, horizontal: screenWidth * 0.1,),
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          side: BorderSide(color: Colors.black, width: 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
