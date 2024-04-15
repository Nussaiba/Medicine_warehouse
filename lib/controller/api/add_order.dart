import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicine/controller/api/api_controller.dart';
import 'package:medicine/controller/pages_controller/add_order_controller.dart';

class AddOrderService {
  final AddOrderController controller =
      Get.put(AddOrderController(), permanent: true);

  Future addOrder() async {
    // Map<String, dynamic> orders = {"medicine_name": name, "quantity": quantity};
    if (controller.order.isNotEmpty) {
      await ApiController().Send(url: 'addOrder', body: controller.order);
      await Get.snackbar(
        "Order",
        "The order was added successfully",

        duration: const Duration(seconds: 2),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.grey.withOpacity(0.2),
        //maxWidth: 250,
        //borderColor: Colors.white,
      );
       print(controller.order);
    controller.clraeitem();
                Get.toNamed('/showorders');

    } else {
      await Get.snackbar(
        "Failed",
        "Please Enter Medicine and Quantity , You Can't Send Empty Order !!",

        duration: const Duration(seconds: 5),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.grey.withOpacity(0.2),
        //maxWidth: 250,
        //borderColor: Colors.white,
      );
    }
    
  }
}
