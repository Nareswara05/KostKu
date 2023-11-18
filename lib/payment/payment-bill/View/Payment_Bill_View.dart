import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kostku_app/Register_Page/Controller/Register_Controller.dart';
import 'package:kostku_app/payment/payment_input/Controller/Payment_Input_Controller.dart';

class PaymentBill extends StatelessWidget {
  final InputPaymentController inputPaymentController =
  Get.find<InputPaymentController>();
  final RegisterController registerController =
  Get.find<RegisterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Summary Page'),
      ),
      body: Center(
        child: Container(
          width: 314,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 274,
                padding: const EdgeInsets.all(16.0),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x1EAAAAAA),
                      blurRadius: 24,
                      offset: Offset(0, 8),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF4F5F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Payment Details',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF303841),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          _buildInfoRow(
                              'Nama lengkap',
                              registerController
                                  .nameController.text
                                  .toString()),
                          const SizedBox(height: 20),
                          _buildInfoRow('No HP',
                              registerController.phoneController.text.toString()),
                          const SizedBox(height: 20),
                          _buildInfoRow('Durasi ngekos',
                              '${inputPaymentController.selectedMonth.value} bulan'),
                          const SizedBox(height: 20),
                          _buildInfoRow(
                              'Tanggal Check-In',
                              '${inputPaymentController.selectedDate.value.day}-${inputPaymentController.selectedDate.value.month}-${inputPaymentController.selectedDate.value.year}'),
                          const SizedBox(height: 20),
                          _buildInfoRow('Metode Pembayaran',
                              inputPaymentController.selectedPaymentMethod.value),
                          const SizedBox(height: 24),
                          Container(
                            width: 297,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFFEDEDED),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          _buildInfoRow('Total', 'Rp899.000'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _showPaymentSuccessDialog(context);
                },
                child: Text(
                  'Bayar',
                  style: TextStyle(fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF2254D1),
                  padding: EdgeInsets.symmetric(horizontal: 130, vertical: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(String title, String value) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.73),
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0.11,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0.11,
            ),
          ),
        ],
      ),
    );
  }

  void _showPaymentSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pembayaran Sukses'),
          content: Text('Terima kasih! Pembayaran Anda telah berhasil.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
