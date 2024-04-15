import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({required this.Title, this.onPressed});
  final String Title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 8),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.9),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3))
              ]),
          width: 150,
          child: MaterialButton(
            onPressed:onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(Title , style: TextStyle(fontWeight: FontWeight.bold, color:Colors.white),),
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}
