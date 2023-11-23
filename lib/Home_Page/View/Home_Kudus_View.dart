import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:iconify_flutter/icons/system_uicons.dart';
import 'package:kostku_app/Home_Page/View/Home_Jakarta_View.dart';
import 'package:kostku_app/Home_Page/View/Home_Bandung_View.dart';
import 'package:kostku_app/Home_Page/View/Home_Semarang_View.dart';
import 'package:kostku_app/Like_Page/Model/Model.dart';
import 'package:kostku_app/Like_Page/View/Like_View.dart';
import 'package:kostku_app/profile_page/View/Profile_Page.dart';
import 'package:kostku_app/Detail_Page/View/Detail_Kudus_View.dart';

import '../Controller/Home_Kudus_Controller.dart';

class HomeKudusView extends StatelessWidget {
  final HomeKudusController controller = Get.put(HomeKudusController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(52),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 4,
          shadowColor: Color(0x3F000000),
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Image.asset(
                'assets/home.png',
                width: 26,
                height: 32,
              ),
              SizedBox(width: 8),
              Text(
                'KostKu',
                style: TextStyle(
                  color: Color(0xFF2254D1),
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              Spacer(),
              IconButton(
                padding: EdgeInsets.all(0), // Atur padding menjadi 0
                icon: Iconify(
                  AntDesign.message,
                  size: 24,
                  color: Colors.black54,
                ),
                onPressed: () {},
              ),
              IconButton(
                padding: EdgeInsets.all(0),
                icon: Icon(
                  Icons.notifications,
                  size: 24,
                  color: Colors.black54,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '#MendingNgekos',
              style: TextStyle(
                color: Color(0xFF252525),
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Sewa dan cari kos dengan sangat mudah',
              style: TextStyle(
                color: Colors.black,
                fontSize: 11,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 285,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(1, 2),
                        ),
                      ],
                    ),
                    child: TextField(
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 11),
                        border: InputBorder.none,
                        hintText: 'Mau Cari Kost Dimana?',
                        prefixIcon: Icon(
                          Icons
                              .search_sharp, // Replace with your appropriate icon
                          size: 25,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 7),
                Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Iconify(
                    SystemUicons.filter,
                    size: 24,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            SizedBox(height: 21),
            Text(
              'Pilih Kotamu!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(height: 8),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeJakartaView()),
                            );
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                            color: Colors.white,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 97,
                                  height: 73,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x3F000000),
                                        blurRadius: 4,
                                        offset: Offset(0, 0),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/monasjakarta.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Jakarta',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 11,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeBandungView()),
                            );
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                            color: Colors.white,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 97,
                                  height: 73,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x3F000000),
                                        blurRadius: 4,
                                        offset: Offset(0, 0),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/bandung.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Bandung',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 11,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeSemarangView()),
                            );
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                            color: Colors.white,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 97,
                                  height: 73,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0),
                                        blurRadius: 4,
                                        offset: Offset(0, 0),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/kotasemarang.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Semarang',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 11,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11),
                          ),
                          color: Color(0xFF2254D1),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 97,
                                height: 73,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0),
                                      blurRadius: 4,
                                      offset: Offset(0, 0),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/kotakudus.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Kudus',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 39),
            Text(
              'Kos Terbaik',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            Obx(
              () {
                print("isLoading: ${controller.isLoading.value}");
                if (controller.kosList.isNotEmpty) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: controller.kosList.length,
                      itemBuilder: (context, index) {
                        var kos = controller.kosList[index];
                        return Container(
                          width: 262,
                          height: 72,
                          margin: EdgeInsets.symmetric(vertical: 8),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 2,
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(() => DetailKudusView(),
                                        arguments: {'index': index});
                                  },
                                  child: Container(
                                    width: 108,
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
                                          child: Stack(children: [
                                            // You can add more widgets here if needed
                                          ]),
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
                                    color: Colors.black
                                        .withOpacity(0.8999999761581421),
                                    fontSize: 13,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 111,
                                top: 0,
                                child: Text(
                                  kos.namaKos,
                                  style: TextStyle(
                                    color: Colors.black
                                        .withOpacity(0.8999999761581421),
                                    fontSize: 13,
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
                                        top: -2,
                                        child: Container(
                                          width: 9,
                                          height: 17,
                                          child: Icon(
                                            Icons.location_pin,
                                            size: 10,
                                            color: Colors.red,
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
                                  'Rp${kos.hargaKos.toString()} / Bulan',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 111,
                                top: 42,
                                child: Text(
                                  kos.jenisKos.toString().split('.').last,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 3,
                                top: 2,
                                child: GestureDetector(
                                  onTap: () {
                                    LikeView();
                                  },
                                  child: Iconify(
                                    AntDesign.heart,
                                    color: Colors.black54,
                                    size: 25.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                } else if (controller.kosList.isEmpty &&
                    !controller.isLoading.value) {
                  return Center(child: Text("No data available."));
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xFF2254D1)),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        onTap: (int index) {
          if (index == 0) {
          } else if (index == 1) {
            Get.offNamed('/LikePage');
          } else if (index == 2) {
            Get.offNamed('/ProfilePage');
          }
        },
      ),
    );
  }
}
