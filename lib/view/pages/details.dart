import 'package:flutter/material.dart';
import 'package:medicine/model/medicine.dart';
import 'package:medicine/view/CustomWidget/AppBarWidget.dart';
import 'package:medicine/view/CustomWidget/ButtonWidget.dart';
import 'package:medicine/view/CustomWidget/DrawerWidget.dart';
import 'package:medicine/view/CustomWidget/Titlewidget.dart';
import 'package:medicine/view/CustomWidget/detail.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    MedicineModel medicinedata =
        ModalRoute.of(context)!.settings.arguments as MedicineModel;

    return Scaffold(
        drawer: DrawerWidget(),
        backgroundColor: Colors.blue,
        body: SafeArea(
            child: Container(
                height: height,
                width: Width,
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Stack(
                  children: [
                    AppBarWidget(),
                    SingleChildScrollView(
                        child: Container(
                            height: height,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: height,
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Image.network(
                                          'http://192.168.207.152:8000/${medicinedata.image}',
                                          width: 200,
                                          height: 200,
                                        ),
                                      ),
                                      DetailWidget(
                                          name:
                                              "Scientific_name : ${medicinedata.scientific_name}"),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      DetailWidget(
                                          name:
                                              "Commercial_name : ${medicinedata.commercial_name}"),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      DetailWidget(
                                          name:
                                              "Company : ${medicinedata.company}"),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      DetailWidget(
                                          name: medicinedata.price.toString()),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      DetailWidget(
                                          name:
                                              "Quantity : ${medicinedata.quantity.toString()}"),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      DetailWidget(
                                          name: "Date :  ${medicinedata.date}"),
                                    ],
                                  ),
                                ),
                              ],
                            )))
                  ],
                ))));
  }
}
