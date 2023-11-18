import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../Model/Model.dart';

class HomeBandungController extends GetxController {
  late RxList<Kosaituminah> kosList = <Kosaituminah>[].obs;
  var isLoading = true.obs;
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
        String jsonString = response.body;
        KosModel kosModel = kosModelFromJson(jsonString);

        kosList = kosModel
            .toKosList()
            .where((kos) => kos.kota == Kota.BANDUNG)
            .toList()
            .obs;

        isLoading.value = false;
        update();
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
