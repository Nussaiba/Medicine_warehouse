import 'package:medicine/controller/api/api_controller.dart';
import 'package:medicine/model/catogray.dart';

class AllCatogaryService {
  Future <List<CatograyModel>> getAllCatogary() async {
    List <dynamic> data = await ApiController().get(
        url: 'getAllCatogary',
       
      //  token: "1|9qVpXZYKrPwJU4To126EA2DvuUbNAyV3sF5Hk3rC"
      );
    print("ggg");
    List<CatograyModel> categories = [];
    for (int i = 0; i < data.length; i++) {
      categories.add( CatograyModel.fromJson(data[i]), );     

    }
    return categories;
  }
}
