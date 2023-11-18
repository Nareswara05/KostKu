import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kostku_app/payment/payment_input/Controller/Payment_Input_Controller.dart';


class InputPaymentPage extends StatelessWidget {
  final InputPaymentController controller = Get.put(InputPaymentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrasi Sewa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DropdownButtonFormField(
              value: controller.selectedMonth.value,
              items: List.generate(12, (index) => index + 1)
                  .map((month) => DropdownMenuItem(
                value: month,
                child: Text('$month bulan'),
              ))
                  .toList(),
              onChanged: (value) => controller.selectMonth(value as int),
              decoration: InputDecoration(labelText: 'Pilih Durasi Sewa'),
            ),
            SizedBox(height: 16.0),
            InkWell(
              onTap: () async {
                DateTime? selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(DateTime.now().year + 1),
                );
                if (selectedDate != null) {
                  controller.selectDate(selectedDate);
                }
              },
              child: InputDecorator(
                decoration: InputDecoration(
                  labelText: 'Pilih Tanggal Check-In',
                ),
                child: Row(
                  children: [
                    Icon(Icons.calendar_today),
                    SizedBox(width: 8.0),
                    Text(
                      '${controller.selectedDate.value.day}-${controller.selectedDate.value.month}-${controller.selectedDate.value.year}',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Obx(() {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Pilih Metode Pembayaran:'),
                  ...controller.paymentMethods.map((method) => Row(
                    children: [
                      Radio(
                        value: method,
                        groupValue: controller.selectedPaymentMethod.value,
                        onChanged: (value) {
                          controller.selectPaymentMethod(value!);
                        },
                        activeColor: Color(0xFF2254D1),
                      ),
                      Text(method),
                      SizedBox(width: 16.0),
                    ],
                  )),
                ],
              );
            }),


            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/PaymentBill');
              },
              child: Text('Ajukan'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF2254D1),
                padding: EdgeInsets.all(16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
