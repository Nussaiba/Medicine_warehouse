import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:medicine/model/order.dart';
import 'package:medicine/view/CustomWidget/RowWidget.dart';

class OrderWidget extends StatelessWidget {
  final OrderModel order;
  const OrderWidget({ required this.order});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
                Get.toNamed("/medicinesorder" , arguments:  order.id);

      },
      child: Container(
        margin: EdgeInsets.only(top: 10, bottom:10, right: 20, left: 20),
        padding: EdgeInsets.all(20),
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
        child: Column(children: [
          //RowWidget(name1: "Pharmacist", name2: order.user_name),
          // Divider(
          //   color: Colors.black,
          // ),
          RowWidget(name1: "32".tr, name2: order.send_status),
          Divider(
            color: Colors.black,
          ),
          RowWidget(name1: "33".tr, name2: order.payment_status),
          Divider(
            color: Colors.black,
          ),
          RowWidget(name1: "34".tr, name2: order.created_at.substring(0, 10)),
          Divider(
            color: Colors.black,
          ),
        ]),
      ),
    );
  }
}
