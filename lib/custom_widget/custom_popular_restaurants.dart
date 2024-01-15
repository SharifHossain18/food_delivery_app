import 'package:flutter/material.dart';

class CustomPopularRestaurantsText extends StatelessWidget {
  final Icon custom_icon;
  final String custom_text;
  const CustomPopularRestaurantsText({super.key,
  required this.custom_icon,
  required this.custom_text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10,),
        custom_icon,
        SizedBox(width: 10,),
        Text("$custom_text",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16
        ),
        ),
      ],
    );
  }
}
