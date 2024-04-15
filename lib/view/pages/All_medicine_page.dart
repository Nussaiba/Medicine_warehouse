import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicine/controller/api/get_all_medicines_controller.dart';
import 'package:medicine/model/medicine.dart';
import 'package:medicine/view/CustomWidget/AppBarWidget.dart';
import 'package:medicine/view/CustomWidget/ButtonWidget.dart';
import 'package:medicine/view/CustomWidget/CardMWidget.dart';
import 'package:medicine/view/CustomWidget/DrawerWidget.dart';
import 'package:medicine/view/CustomWidget/Titlewidget.dart';

class AllMedPage extends StatelessWidget {
  const AllMedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      body: ListView(children: [
        AppBarWidget(),
        TitleWidget(title: "24".tr),
        Container(
          height: 530,
          child: FutureBuilder<List<MedicineModel>>(
            future: getAllMedicineService().getAllMedicine(),
            builder: (context, snapshot) {
              print("showmedicine");
              if (snapshot.hasData) {
                List<MedicineModel> medicines = snapshot.data!;
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 8,
                  ),
                  child: GridView.builder(
                      clipBehavior: Clip.hardEdge,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.85,
                        crossAxisCount: 2,
                        mainAxisSpacing: 30,
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
      ButtonWidget(Title: "26".tr, onPressed:(){     Get.toNamed('/orders');
} ,),
//             Get.bottomSheet(
// elevation: 10,
// enterBottomSheetDuration: Duration(seconds: 1),
// shape: RoundedRectangleBorder(
//   side : BorderSide(color :Colors.white),
//   //borderRadius: BorderRadius.circular(40)
//   ),
//               Container(
                 
//                 height: 1850,
//                 child : TitleWidget(title :"Bottom S"),
//                 color :Colors.white.withOpacity(0.8),
//               ),

//            );
         
            
        
        
      ]),
    );
  }
}
