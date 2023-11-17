import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kostku_app/profile_page/Controller/Profile_Controller.dart';

class RegisterController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final ProfileController profileController = Get.put(ProfileController());

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty || !value.contains('@gmail.com')) {
      return 'Email tidak valid';
    }
    return null;
  }

  void onSubmit() {
    if (getFormKey().currentState != null &&
        getFormKey().currentState!.validate()) {
      profileController.setDataFromRegister(
        nameController.text,
        phoneController.text,
      );
    }

    Get.offNamed('/HomePage');

  }

  GlobalKey<FormState> getFormKey() {
    return _formKey;
  }
}
