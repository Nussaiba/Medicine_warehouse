import 'package:medicine/controller/api/api_controller.dart';
import 'package:medicine/model/catogray.dart';
import 'package:medicine/model/medicine.dart';

class SearchService {
  String? medicineName;
  String? catograyName;
  Future<MedicineModel> getSearchMedicine(medicineName) async {
    Map<String, dynamic> data = await ApiController().get(
      url: 'search/${medicineName}',
    );

    MedicineModel medicine = MedicineModel.fromJson(data);

    return medicine;
  }

  Future<CatograyModel> getSearchCatogray(catograyName) async {
   Map<String, dynamic> data = await ApiController().get(
      url: 'search/${catograyName}',
    );
   CatograyModel   catogray =CatograyModel.fromJson(data);

    return catogray;
  }
}
