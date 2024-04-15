import 'package:flutter/material.dart';
import 'package:medicine/controller/api/api_controller.dart';
import 'package:medicine/model/medicine.dart';

class getAllMedicineService {

   Future<List<MedicineModel>>getAllMedicine()async {

    List<dynamic> data = await ApiController().get(
        url: 'getAllMedicine',
      //  token: "1|9qVpXZYKrPwJU4To126EA2DvuUbNAyV3sF5Hk3rC",
        );

    List<MedicineModel> medicines = [];
    for (int i = 0; i < data.length; i++) {
     medicines.add(MedicineModel.fromJson(data[i]));
    }
    return medicines;
  }
}
