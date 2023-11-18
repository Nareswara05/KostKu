import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputPaymentController extends GetxController {
  var selectedMonth = 1.obs;
  var selectedDate = DateTime.now().obs;
  var selectedPaymentMethod = ''.obs;

  List<String> paymentMethods = ['Dana', 'Gopay', 'Ovo', 'Qris'];

  void selectMonth(int month) {
    selectedMonth.value = month;
  }

  void selectDate(DateTime date) {
    selectedDate.value = date;
  }

  void selectPaymentMethod(String method) {
    selectedPaymentMethod.value = method;
  }

  }


