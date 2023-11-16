import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Model/Model.dart';

class DetailController extends GetxController {
  late RxList<Kosaituminah> kosList = <Kosaituminah>[].obs;
  var isLoading = true.obs; // Add isLoading property

  @override
  void onInit() {
    super.onInit();
    fetchKosData();
  }

  Future<void> fetchKosData() async {
    try {
      final response = await http.get(
          Uri.parse('https://koskosan-api.000webhostapp.com/api/koskosan'));

      if (response.statusCode == 200) {
        // Successfully fetched data
        String jsonString = response.body;
        KosModel kosModel = kosModelFromJson(jsonString);
        kosList.assignAll(kosModel.toKosList()); // Use assignAll to update the observable list
        isLoading.value = false; // Set isLoading to false after data is loaded
        update(); // Update the UI
      } else {
        // Handle the error (e.g., show an error message)
        print('Failed to fetch data. Status code: ${response.statusCode}');
      }
    } catch (e) {
      // Handle any other errors
      print("Error fetching JSON data: $e");
      isLoading.value = false; // Set isLoading to false in case of an error
      update(); // Update the UI
    }
  }
}






