import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicine/controller/pages_controller/add_order_controller.dart';
import 'package:medicine/model/medicine.dart';

class CardWidget extends StatelessWidget {
  final AddOrderController mycontrollel = Get.put(AddOrderController());

  final MedicineModel medicine;
  TextEditingController? controller = TextEditingController();
  CardWidget({required this.medicine});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
         Get.toNamed("/details", arguments: medicine);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
        child: Container(
          width: 380,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                )
              ]),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Image.network(
                'http://192.168.207.152:8000/${medicine.image}',
                height: 60,
                width: 60,
              ),
            ),
            Container(
              width: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "  " "${medicine.commercial_name}",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "  " "${medicine.scientific_name}",
                    style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "  " "${medicine.price.toString()}",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1),
              child: Container(
                width: 60,
                height: 50,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.1),
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                  hintText:"36".tr,
                  hintStyle: TextStyle(fontSize: 12)
                  // label:Text("quantity:" , style: TextStyle(fontSize: 12),),
                   // fillColor: Colors.grey.withOpacity(0.1),
                  ),
                ),
              
              ),
            ),
             Container(
               width: 60,
                height: 50,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.1),
                    borderRadius: BorderRadius.circular(10)),
               child: IconButton(
                 icon: Icon(
                    Icons.shopping_cart_rounded,
                    size: 24,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    print(controller);   //   if (controller! = null) {                 
               try{       int value = int.parse(controller!.text);     print(value);
                 mycontrollel.addMedicineToOrder(medicine.commercial_name, value);
                       print(mycontrollel.order.length);
               }catch(e) {
               Get.snackbar(
                     "Failed",
                 "Please Enter quantity of ${medicine.commercial_name} medicine",
                     duration: const Duration(seconds: 3),
                     snackPosition: SnackPosition.TOP,
                     backgroundColor: Colors.grey.withOpacity(0.2),
                      );       }}
               ),
             ),
               
          ]),
        ),
      ),
    );
  }
}
