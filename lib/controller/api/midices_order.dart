import 'package:medicine/controller/api/api_controller.dart';
import 'package:medicine/model/medicine.dart';
import 'package:medicine/model/medicine_order.dart';

class MedicinesOrderService {
  Future<List<MedicinesOrderModel>> showMedicine(order_id) async {
    List<dynamic> data = await ApiController().get(
      url: 'showMedOrder/${order_id}',
    );

    List<MedicinesOrderModel> medicines = [];
    for (int i = 0; i < data.length; i++) {
      medicines.add(MedicinesOrderModel.fromJson(data[i]));
    }
    print(medicines);
    return medicines;
  }
}
