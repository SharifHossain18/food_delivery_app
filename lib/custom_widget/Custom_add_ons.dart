import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CustomAddOns extends StatelessWidget {
  final String image_address;
  const CustomAddOns({super.key,
  required this.image_address,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width*0.2,
      height: Get.height*0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15)
        ),
          image: DecorationImage(
              image: AssetImage(
                image_address,
              ),
              fit: BoxFit.fill
          )
      ),
    );
  }
}
