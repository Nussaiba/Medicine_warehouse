import 'package:get/get.dart';
import 'package:medicine/controller/api/add_favorite.dart';
import 'package:medicine/controller/api/api_controller.dart';
import 'package:medicine/controller/local/locale_controller.dart';
import 'package:medicine/controller/pages_controller/favorite_cotroller.dart';
import 'package:medicine/model/medicine.dart';

class MyBiniding implements Bindings {
  @override
  void dependencies() {
    Get.put(ApiController());
    Get.put( AddFavoriteService());
    Get.put(mylocalcontroller());
  }
}
