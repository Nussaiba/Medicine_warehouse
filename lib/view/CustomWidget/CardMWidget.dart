import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicine/controller/api/add_favorite.dart';
import 'package:medicine/controller/api/api_controller.dart';
import 'package:medicine/controller/pages_controller/favorite_cotroller.dart';
import 'package:medicine/model/medicine.dart';

class CardMedWidget extends StatelessWidget {
  final AddFavoriteService mycontrollel =
      Get.put(AddFavoriteService(), permanent: true);
  RxBool isFavorit = false.obs;

  final MedicineModel medicine;
  CardMedWidget({required this.medicine, ontap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed("/details", arguments: medicine);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 40,
                offset: Offset(0, 3),
              )
            ]),
            child: Card(
              elevation: 10,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "${medicine.commercial_name}",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                             r"$ " "${medicine.price}",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                             GestureDetector(
                                onTap: ()async{
                                   await AddFavoriteService()
                                      .AddFavorite(medicine);
                                },
                                child:Icon(
                                  Icons.favorite,
                                  color: mycontrollel. IsFav(medicine.id)
                                      ? Colors.red
                                      : Colors.grey,
                                ))
                          ]),
                    ]),
              ),
            ),
          ),
          Positioned(
              right: 10,
              left: 10,
              bottom: 95,
              child: Image.network(
                'http://192.168.207.152:8000/${medicine.image}',
                height: 80,
                width: 80,
              )),
        ],
      ),
    );
  }
}
