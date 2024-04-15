import 'package:get/get.dart';
import 'package:medicine/controller/api/api_controller.dart';

class AddOrderController extends GetxController {
  final RxList order = [].obs;

  List<dynamic> addMedicineToOrder(String name, int quantity) {
    order.add({"medicine_name": name, "quantity": quantity});

    print("order : $order");
    return order;
  }

   void clraeitem() {
    order.clear();
   }
   
   }