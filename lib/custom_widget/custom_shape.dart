import 'package:flutter/material.dart';

class CustomBulletShape extends StatelessWidget {
  const CustomBulletShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 5,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black
      ),

    );
  }
}
