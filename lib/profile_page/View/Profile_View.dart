// import 'dart:math';
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:kostku_app/login_page/Controller/Login_Controller.dart';
// import 'package:kostku_app/profile_page/Controller/Profile_Controller.dart';
// import 'package:kostku_app/Register_Page/Controller/Register_Controller.dart';
//
// class ProfilePage extends StatelessWidget {
//   final ProfileController profileController = Get.put(ProfileController());
//   final RegisterController registerController = Get.put(RegisterController());
//   final LoginController loginController = Get.put(LoginController());
//
//   @override
//   Widget build(BuildContext context) {
//     print('emaill' + loginController.cEmail!.text.toString());
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile Page'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.logout),
//             onPressed: () {
//               // Clear data and navigate to login page
//               profileController.setDataFromLogin("");
//               Get.offNamed('/LoginPage');
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text('Name: ${registerController.nameController.text.toString()}'),
//             Text('Phone: ${registerController.phoneController.text.toString()}'),
//             Text('Email: ${loginController.cEmail?.text.toString()}'),          ],
//         )),
//
//     );
//   }
// }
