import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicine/controller/api/search_controller.dart';
import 'package:medicine/model/medicine.dart';

class SearchWidget extends StatelessWidget {
  SearchWidget({super.key, this.onFieldSubmitted, required this.hintText});
  //String? medicineName;
  final void Function(String)? onFieldSubmitted;
   final String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Container(
        width: 300,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3),
              )
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(children: [
            Icon(Icons.search, color: Colors.grey),
            Container(
              height: 50,
              width: 250,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: hintText,
                    //"Search Drug or Clasification ",
                    border: InputBorder.none,
                  ),
                  onFieldSubmitted: onFieldSubmitted,
                 
                ),
              ),
            ),
            Icon(Icons.filter_list)
          ]),
        ),
      ),
    );
  }
}
