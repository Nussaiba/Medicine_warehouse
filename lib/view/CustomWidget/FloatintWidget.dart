import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FloatingWidget extends StatelessWidget {
  const FloatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 10,
          offset: Offset(0, 3),
        )
      ]),
      child: FloatingActionButton(
        onPressed: () {
          //Navigator.pushNamed(context, OrderPage.id);
          Get.toNamed("/orders");
        },
        child: Icon(
          Icons.shopping_cart_rounded,
          size: 28,
          color: Colors.blue,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
