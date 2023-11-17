import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../Model/Model.dart';


class HomeJakartaController extends GetxController {
  late RxList<Kosaituminah> kosList = <Kosaituminah>[].obs;
  var isLoading = true.obs; // Add isLoading
  late final SharedPreferences prefs;

  @override
  void onInit() {
    super.onInit();
    fetchKosData();
    checkSharedPreference();
  }

  void checkSharedPreference() async {
    prefs = await SharedPreferences.getInstance();
  }

  Future<void> fetchKosData() async {
    try {
      final response = await http.get(
          Uri.parse('https://koskosan-api.000webhostapp.com/api/koskosan'));

      if (response.statusCode == 200) {
        // Successfully fetched data
        String jsonString = response.body;
        KosModel kosModel = kosModelFromJson(jsonString);
        kosList = kosModel.toKosList().obs;
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
