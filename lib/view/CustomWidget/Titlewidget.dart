import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
   TitleWidget( {required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 10, bottom: 14),
      child: Center(
        child: Text(
          "$title",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
    );
  }
}
