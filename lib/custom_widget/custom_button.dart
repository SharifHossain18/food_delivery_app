import 'package:flutter/material.dart';

class CustomOrderButton extends StatelessWidget {
  final String button_text;
  const CustomOrderButton({super.key,
  required this.button_text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.all(
          Radius.circular(15)
        ),
      ),
      child: Center(child: Text(button_text,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.blue
      ),
      )),

    );
  }
}
