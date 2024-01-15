import 'package:flutter/material.dart';

class CustomTitleText extends StatelessWidget {
  final String titleText;
  const CustomTitleText({super.key,
  required this.titleText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titleText,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),

        ),
      ],
    );
  }
}
