import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Model/Model.dart';

class LikeController extends GetxController {
  late RxList<Kosaituminah> kosList = <Kosaituminah>[].obs;
  var isLoading = true.obs; // Add isLoading property

  @override
  void onInit() {
    super.onInit();
    fetchKosData(); // Fetch and parse JSON data when the controller is initialized
  }

  Future<void> fetchKosData() async {
  try {
    final response = await http.get(Uri.parse('https://koskosan-api.000webhostapp.com/api/koskosan'));

    if (response.statusCode == 200) {
      String jsonString = response.body;
      print('Fetched Data: $jsonString');

      KosModel kosModel = kosModelFromJson(jsonString);
      kosList.assignAll(kosModel.toKosList());
      isLoading.value = false;
      update();

      // Print kota values for debugging
      print("Kota Values in kosList: ${kosList.map((kost) => kost.kota)}");
    } else {
      print('Failed to fetch data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print("Error fetching JSON data: $e");
    isLoading.value = false;
    update();
  }
  }
}
