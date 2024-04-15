import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicine/controller/api/show_orders_controller.dart';
import 'package:medicine/model/order.dart';
import 'package:medicine/view/CustomWidget/AppBarWidget.dart';
import 'package:medicine/view/CustomWidget/DrawerWidget.dart';
import 'package:medicine/view/CustomWidget/OrderWidget.dart';
import 'package:medicine/view/CustomWidget/Titlewidget.dart';

class ShowOrdersPage extends StatelessWidget {
  const ShowOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

       drawer: DrawerWidget(),
      body: ListView(children: [
        AppBarWidget(),
        TitleWidget(title: "30".tr),
        Container(
          height: 580,
          child:FutureBuilder<List<OrderModel>>(
            future:  showOrdersService().showOrders(),
            builder: (context, snapshot) {
              print("showOrder");
              if (snapshot.hasData) {
                List<OrderModel> order = snapshot.data!;
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 8,
                  ),
                  child: ListView.builder(
                      itemCount: order.length,
                      itemBuilder: (context, i) {
                        return OrderWidget(
                          order : order[i],
                        );
                      }),
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        
        )
      ]),
    );
  }
}