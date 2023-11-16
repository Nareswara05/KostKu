import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kostku_app/Like_Page/Controller/like_controller.dart';
import 'package:kostku_app/Home_Page/View/Home_Jakarta_View.dart';

class LikeView extends StatelessWidget {
  final LikeController controller = Get.put(LikeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 4,
        actions: <Widget>[
          Container(
            width: 363,
            height: 52,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Favorit',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Obx(
        () {
          print("isLoading: ${controller.isLoading.value}");
          if (controller.kosList.isNotEmpty) {
            return ListView.builder(
              itemCount: controller.kosList.length,
              itemBuilder: (context, index) {
                var kos = controller.kosList[index];
                return Container(
                  width: 331,
                  height: 72,
                  margin: EdgeInsets.only(bottom: 24), // Added margin
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 262,
                          height: 72,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 2,
                                child: Container(
                                  width: 98,
                                  height: 70,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(kos.gambarKos),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        color: Colors.black
                                            .withOpacity(0.1899999976158142),
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 68,
                                top: 0,
                                child: Container(
                                  width: 38,
                                  height: 18,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 38,
                                          height: 18,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF2254D1),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(5),
                                                bottomLeft: Radius.circular(12),
                                                bottomRight: Radius.circular(5),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 4,
                                        top: 3,
                                        child: Container(
                                          width: 11,
                                          height: 11,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(),
                                          child: Stack(
                                            children: [
                                              // You can add more widgets here if needed
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 18,
                                        top: 3,
                                        child: Text(
                                          '4.7',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 8,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 111,
                                top: 0,
                                child: Text(
                                  kos.namaKos,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 111,
                                top: 21,
                                child: Container(
                                  width: 151,
                                  height: 17,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 9,
                                          height: 17,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image:
                                                  NetworkImage(kos.gambarKos),
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 10,
                                        top: 1,
                                        child: Text(
                                          kos.alamatKos,
                                          style: TextStyle(
                                            color: Color(0xAA252525),
                                            fontSize: 10,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 111,
                                top: 57,
                                child: Text(
                                  '${kos.hargaKos.toString()} / Bulan',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 304,
                        top: 21,
                        child: Container(
                          width: 27,
                          height: 27,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // You can add more widgets here if needed
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          } else if (controller.kosList.isEmpty &&
              !controller.isLoading.value) {
            return Center(child: Text("No data available."));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Color(0xFF2254D1)),
            label: 'Favorit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        currentIndex: 1, // Set to 1 for the "Favorit" tab
        onTap: (int index) {
          if (index == 0) {
            Get.to(HomeJakartaView());
          } else if (index == 1) {
            Get.to(LikeView());
          } else if (index == 2) {
            Get.to(());
          }
        },
      ),
    );
  }
}
