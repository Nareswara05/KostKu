import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/Detail_Kudus_Controller.dart';
import 'package:kostku_app/payment/payment_input/View/Payment_Input_View.dart';

class DetailKudusView extends StatelessWidget {
  final DetailKudusController controller = Get.put(DetailKudusController());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    final Map<String, dynamic>? args = Get.arguments;
    final int initialIndex = args?['index'] ?? 0;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Kos'),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else if (controller.kosList.isEmpty) {
          return Center(child: Text('No data available.'));
        } else {
          var selectedKos = controller.kosList[initialIndex];
          return SingleChildScrollView(
            child: Container(
              width: screenWidth,
              height: screenHeight,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(screenWidth * 0.03),
              ),
              child: Stack(
                children: [
                  Positioned(
                    width: screenWidth,
                    height: screenHeight * 0.4,
                    child: Image.network(
                      selectedKos.gambarKos,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: screenWidth * 0.05,
                    top: screenHeight * 0.45,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          selectedKos.namaKos,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: screenWidth * 0.06,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 1,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Container(
                              width: 84,
                              height: 25,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    color: Colors.black.withOpacity(0.33),
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Kos ${selectedKos.jenisKos.toString().split('.').last}',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 11,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                              size: 15,
                            ),
                            SizedBox(width: 0),
                            Text(
                              '${selectedKos.kota.toString().split('.').last}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 20,
                            ),
                            SizedBox(width: 0),
                            Text(
                              ' ${selectedKos.ratingKos}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 40),
                        Row(
                          children: [
                            Text(
                              'kamar tersisa: ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            Text(
                              '${selectedKos.sisaKamar}',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 13,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: screenWidth * 0.05,
                    top: screenHeight * 0.56,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nama pemilik : ${selectedKos.namaPemilikKos}',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        SizedBox(height: 40),
                        Text(
                          'Fasilitas : ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        Text(
                          selectedKos.fasilitas.join('\n'),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Peraturan',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        Text(
                          selectedKos.peraturanKos.join('\n'),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      }),
      bottomNavigationBar: Container(
        width: 375,
        height: 91,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, -2),
              spreadRadius: 0,
            )
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              left: 39,
              top: 36,
              child: GestureDetector(
                onTap: () {
                  // Navigate to InputPaymentPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InputPaymentPage()),
                  );
                },
                child: Container(
                  width: 141,
                  height: 37,
                  decoration: ShapeDecoration(
                    color: Color(0xFF2254D1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Ajukan Sewa',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 208,
              top: 36,
              child: Container(
                width: 141,
                height: 37,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 141,
                        height: 37,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color:
                              Colors.black.withOpacity(0.36000001430511475),
                            ),
                            borderRadius: BorderRadius.circular(11),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 5,
                      child: Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/messaging.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 46,
                      top: 10,
                      child: Text(
                        'Chat pemilik',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
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
          ],
        ),
      ),
    );
  }
}
