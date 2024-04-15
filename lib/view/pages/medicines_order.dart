import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicine/controller/api/midices_order.dart';
import 'package:medicine/model/medicine_order.dart';
import 'package:medicine/view/CustomWidget/AppBarWidget.dart';
import 'package:medicine/view/CustomWidget/ButtonWidget.dart';
import 'package:medicine/view/CustomWidget/DrawerWidget.dart';
import 'package:medicine/view/CustomWidget/MedicineOrder.dart';
import 'package:medicine/view/CustomWidget/Titlewidget.dart';

class MedicinesOrderPage extends StatelessWidget {
  const MedicinesOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
     int order_id = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(

 drawer: DrawerWidget(),
      body: ListView(children: [
        AppBarWidget(),
        TitleWidget(title: "24".tr),
        Container(
          height: 530,
          child: FutureBuilder<List< MedicinesOrderModel>>(
            future:MedicinesOrderService().showMedicine(order_id),
            builder: (context, snapshot) {
              print("showmedicine");
              if (snapshot.hasData) {
                List< MedicinesOrderModel> medicines = snapshot.data!;
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 8,
                  ),
                  child: ListView.builder(
                      
                      itemCount: medicines.length,
                      itemBuilder: (context, index) {
                        return MedicineOrderWidget(medicineOrder: medicines[index],);
                      }),
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ButtonWidget(Title: "31".tr, onPressed:(){  Get.back();
} ,),

      
   ]), );
  }
}