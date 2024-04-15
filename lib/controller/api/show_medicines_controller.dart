import 'package:medicine/controller/api/api_controller.dart';
import 'package:medicine/model/medicine.dart';

class showMedicineService {

   Future<List<MedicineModel>>showMedicine(catogray_id)async {

    List<dynamic> data = await ApiController().get(
        url: 'showMedicine/${catogray_id}',
        );

    List<MedicineModel> medicines = [];
    for (int i = 0; i < data.length; i++) {
     medicines.add(MedicineModel.fromJson(data[i]));
    }
   
    return medicines;
  
  }
}
