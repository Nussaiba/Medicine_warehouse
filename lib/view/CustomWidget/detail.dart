import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailWidget extends StatelessWidget {
  DetailWidget({required this.name});
  String name;
  @override
  Widget build(BuildContext context) {
    final Width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
        width: Width,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(70),
                bottomRight: Radius.circular(0),
              ))),
          child: Text(name, style: TextStyle(fontSize: 18)),
        ));
  }
}
