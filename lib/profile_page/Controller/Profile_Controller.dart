import 'package:get/get.dart';
import 'package:kostku_app/login_page/Controller/Login_Controller.dart';

class ProfileController extends GetxController {
  RxString name = "".obs;
  RxString phone = "".obs;
  RxString token = "".obs;

  void setDataFromRegister(String newName, String newPhone) {
    name.value = newName;
    phone.value = newPhone;
    token.value = ""; // Clear token when setting data from register
  }

  void setDataFromLogin(String newToken) {
    name.value = Get.find<LoginController>().cEmail?.text ?? "";
    phone.value = getRandomPhoneNumber(); // You need to implement getRandomPhoneNumber
    token.value = newToken;
  }

  String getRandomPhoneNumber() {
    // Implement logic to generate a random phone number
    // For simplicity, let's return a static value
    return "1234567890";
  }
}
