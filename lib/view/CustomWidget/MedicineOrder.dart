import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicine/model/medicine.dart';
import 'package:medicine/model/medicine_order.dart';

class MedicineOrderWidget extends StatelessWidget {
  MedicineOrderWidget({required this.medicineOrder});
  final MedicinesOrderModel medicineOrder;
  MedicineModel? medicineModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.1),
              spreadRadius: 3,
              blurRadius: 40,
              offset: Offset(0, 3),
            ),
          ],
        
        //  Border.all({color: Colors.white}),
        
          color: Colors.blue.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.all(8),
                child: Text("medicine : "  "${medicineOrder.medicine_name}",
                    style: TextStyle(
                        color: Colors.white.withOpacity(.8),
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(" quantity :  " "${medicineOrder.quantity}",
                    style: TextStyle(
                        color: Colors.white.withOpacity(.7),
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ),
              trailing: Icon(
                Icons.medical_information,
                color: Colors.white,
                size: 40,
              ),
            ),
            Text(medicineOrder.created_at.substring(0, 10),
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
