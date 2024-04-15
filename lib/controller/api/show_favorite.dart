import 'package:medicine/controller/api/api_controller.dart';
import 'package:medicine/model/medicine.dart';

class AllFavoriteService {
  Future <List<MedicineModel>> getFavorite() async {
    List <dynamic> data = await ApiController().get(
        url: 'showFavorite'
      );
    print("ggg");
    List<MedicineModel> medicines = [];
    for (int i = 0; i < data.length; i++) {
     medicines.add( MedicineModel.fromJson(data[i]), );     

    }
    return medicines;
  }
}
