import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medicine/controller/api/api_controller.dart';
import 'package:medicine/model/medicine.dart';

class AddFavoriteService extends GetxController {
//final RxSet<int> favorites_id =<int>{}.obs;
  List<int> favorite = <int>[].obs;
  final favorites = RxList<MedicineModel>([]);

  static final GetStorage box = GetStorage();

  static Future<void> saveidfav(int id) async {
    box.write('id', id);
    //  box.getKeys('id');
  }

  bool IsFav(id) {
    return box.read('medicine_$id') ?? false;
  }

   toggleIsFav(id) async {
    bool current =  IsFav(id);
    box.write('medicine_$id', !current);
  }

  void add(medicine_id) async {
    favorite.add(medicine_id);
  }

  // void removefavorites(int medicine_id) async {
  //   await favorite.remove(medicine_id);
  // }

  // isFavorite(medicine_id) async {
  //   return await favorite.contains(medicine_id);
  // }

  Future AddFavorite(MedicineModel medicine) async {
    Map<String, dynamic> data =
        await ApiController().get(url: 'addToFavorite/${medicine.id}');
    if (data['message'] == 'The medicine was added to favorite successfully') {
      add(medicine.id);
      favorites.add(medicine);
      // box.write('id', favorite.toList());
      await toggleIsFav(medicine.id);
      favorites.refresh();
      await saveidfav(medicine.id);

      await Get.snackbar(
        "Success",
        "${data['message']}",
        duration: const Duration(seconds: 2),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.grey.withOpacity(0.2),
      );
    }
    if (data['message'] == 'The medicine already existed in favorite') {
      await Get.snackbar(
        "Failed",
        'The medicine already existed in favorite'
      //  "${data['message']}"
      // 
      
      ,

        duration: const Duration(seconds: 2),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.grey.withOpacity(0.2),
        //maxWidth: 250,
        //borderColor: Colors.white,
      );
    }
  }
}
