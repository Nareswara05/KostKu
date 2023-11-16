import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kostku_app/Register_Page/Controller/User_Controller.dart';

class RegisterController extends GetxController{
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final UserController userController = Get.put(UserController());



  String? validateEmail(String? value) {
    if (value == null || value.isEmpty || !value.contains('@gmail.com')) {
      return 'Email tidak valid';
    }
    return null;
  }





  void onSubmit() {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {

      userController.name.value = 'newName';
      userController.email.value = 'newEmail';
      userController.phone.value = 'newPhone';
      userController.password.value = 'newPassword';


    }
    Get.toNamed('/HomeJakartaView');
  }






}