import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicine/model/catogray.dart';

class ContainerWidget extends StatelessWidget {
  ContainerWidget({required this.catogray});

  final CatograyModel catogray;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed("/medicines" , arguments:  catogray);
      },
      child: Container(
        padding: EdgeInsets.all(8),
       // width: 100,
        height: 25,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3))
            ]),
        margin: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          
            Center(
              child: Text(
                catogray.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color:Colors.white)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
