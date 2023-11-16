import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kostku_app/detail_view/Model/Model.dart';
import 'package:kostku_app/detail_view/controller/detail_controller.dart';

class DetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DetailController detailController = Get.put(DetailController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail View'),
      ),
      body: Obx(
        () {
          if (detailController.isLoading.value) {
            return Center(child: CircularProgressIndicator());
          } else {
            return buildDetailContent(detailController.kosList.first);
          }
        },
      ),
    );
  }

  Widget buildDetailContent(Kosaituminah kos) {
    return Container(
      width: 360,
      height: 793,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 360,
              height: 317,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/360x317"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 302,
            top: 28,
            child: Container(
              width: 27,
              height: 27,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Stack(
                children: [
                  // Add widgets inside this stack if needed
                ],
              ),
            ),
          ),
          Positioned(
            left: 17,
            top: 331,
            child: Text(
              kos.namaKos,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          // Add other Positioned widgets for different elements
          // Follow the same pattern as in your provided design
        ],
      ),
    );
  }
}
