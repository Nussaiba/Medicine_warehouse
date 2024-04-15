import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicine/controller/api/add_order.dart';
import 'package:medicine/controller/api/get_all_medicines_controller.dart';
import 'package:medicine/controller/api/show_orders_controller.dart';
import 'package:medicine/model/medicine.dart';
import 'package:medicine/view/CustomWidget/AppBarWidget.dart';
import 'package:medicine/view/CustomWidget/ButtonWidget.dart';
import 'package:medicine/view/CustomWidget/CardWidget.dart';
import 'package:medicine/view/CustomWidget/DrawerWidget.dart';
import 'package:medicine/view/CustomWidget/Titlewidget.dart';

class OrderPage extends StatelessWidget {
  
  OrderPage({super.key});
  TextEditingController quant = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerWidget(),
        body: ListView(children: [
      AppBarWidget(),
      //Category
      TitleWidget(title:"27".tr ),

//Categories
      Container(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        height: 500,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.05),
            borderRadius: BorderRadius.circular(15)),
        child: FutureBuilder<List<MedicineModel>>(
          future: getAllMedicineService().getAllMedicine(),
          builder: (context, snapshot) {
            print("111");
            if (snapshot.hasData) {
              List<MedicineModel> medicines = snapshot.data!;
              return ListView.builder(
                  itemCount: medicines.length,
                  itemBuilder: (context, index) {
                    return CardWidget(medicine: medicines[index]);
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
        ButtonWidget(
          Title: "28".tr,
          onPressed: () async {
            print(256565656);
       await AddOrderService().addOrder();
           
           showOrdersService().showOrders();
          },
        ), ButtonWidget(
          Title: "29".tr,
          onPressed: (){
      
            Get.toNamed('/showorders');
          
          },)],),
      )
     
    ]));
  }
}
