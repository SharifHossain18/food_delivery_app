import 'package:flutter/material.dart';

class LoginWithSocialMedia extends StatelessWidget {
  final String image_address;
  const LoginWithSocialMedia({super.key,
  required this.image_address
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(
            image_address
          ),
          fit: BoxFit.fill
        )
      ),
    );
  }
}
