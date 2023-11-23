import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../Model/Model.dart';

class DetailController extends GetxController {
  late RxList<Kosaituminah> kosList = <Kosaituminah>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchKosData();
  }

  Future<void> fetchKosData() async {
    try {
      final response = await http.get(
        Uri.parse('https://koskosan-api.000webhostapp.com/api/koskosan'),
      );

      if (response.statusCode == 200) {
        String jsonString = response.body;
        KosModel kosModel = kosModelFromJson(jsonString);

        kosList.assignAll(kosModel.toKosList());
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
