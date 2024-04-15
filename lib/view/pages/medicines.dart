import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicine/controller/api/search_controller.dart';
import 'package:medicine/controller/api/show_medicines_controller.dart';
import 'package:medicine/model/catogray.dart';
import 'package:medicine/model/medicine.dart';
import 'package:medicine/view/CustomWidget/AppBarWidget.dart';
import 'package:medicine/view/CustomWidget/CardMWidget.dart';
import 'package:medicine/view/CustomWidget/DrawerWidget.dart';
import 'package:medicine/view/CustomWidget/FloatintWidget.dart';
import 'package:medicine/view/CustomWidget/SearchWidget.dart';
import 'package:medicine/view/CustomWidget/Titlewidget.dart';

class MedicinesPage extends StatelessWidget {
   MedicinesPage({super.key});
  String? medicineName;

  @override
  Widget build(BuildContext context) {
      CatograyModel catogray =
          ModalRoute.of(context)!.settings.arguments as CatograyModel;
 //int catogray_id = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
        floatingActionButton: FloatingWidget(),
        drawer: DrawerWidget(),
        body: ListView(
          children: [
            AppBarWidget(),
            //Search
            SearchWidget(hintText: "25".tr,onFieldSubmitted: (data) async {
                    medicineName = data;
                    MedicineModel medicine = await SearchService()
                        .getSearchMedicine( medicineName!);
                     Get.toNamed("/details", arguments: medicine);
                  },),

            //Category
            TitleWidget(title: "${catogray.name}" " Medicines"),

            Container(
              height: 510,
              child: FutureBuilder<List<MedicineModel>>(
                future: showMedicineService().showMedicine(catogray.id),
                builder: (context, snapshot) {
                  print("showmedicine");
                  if (snapshot.hasData) {
                    List<MedicineModel> medicines = snapshot.data!;
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                        top : 8,

                      ),
                      child: GridView.builder(
                        clipBehavior: Clip.hardEdge,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 0.85,
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                          ),
                          itemCount: medicines.length,
                          itemBuilder: (context, index) {
                            return CardMedWidget(
                              medicine: medicines[index],
                            
                            );
                          }),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
          ],
        ));
  }
}
