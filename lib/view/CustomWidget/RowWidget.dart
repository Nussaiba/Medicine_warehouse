import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  RowWidget({required this.name1 , required this.name2});
  String name1;
  String name2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$name1",
            style: TextStyle(fontSize: 16),
          ),
          Text(
            "$name2",
            style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
