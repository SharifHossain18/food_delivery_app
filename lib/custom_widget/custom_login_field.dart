import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final Icon customIcon;
  final IconButton? customSuffixIcon;
  const LoginField({super.key,
  required this.hintText,
  required this.obscureText,
  required this.customIcon,
   this.customSuffixIcon,

  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20,),
        Expanded(
          child: TextField(
            obscureText: obscureText,
            decoration: InputDecoration(
              prefixIcon: customIcon,
              suffixIcon: customSuffixIcon,
              filled: true,
                fillColor: Colors.grey[300],
                // labelText: labelText,
                hintText: hintText,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w200
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(20)
                    )
                )
            ),
          ),
        ),
        SizedBox(width: 20,),
      ],
    );
  }
}
