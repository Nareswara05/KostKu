import 'package:get/get.dart';


class UserController extends GetxController {
  var name = ''.obs;
  var email = ''.obs;
  var phone = ''.obs;
  var password = ''.obs;

  void setUserDetails({
    required String name,
    required String email,
    required String phone,
    required String password,

  }) {
    this.name.value = name;
    this.email.value = email;
    this.phone.value = phone;
    this.password.value = password;
  }
}
