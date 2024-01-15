import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/home_page.dart';
import 'package:get/get.dart';

import '../../custom_widget/custom_login_field.dart';
import '../../custom_widget/custom_login_social_media.dart';

class LoginPage extends StatefulWidget {
   LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool checkbox_value =false;
  bool obscure_text =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 60,),
            Text("Food Express",
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: Colors.pink
            ),
            ),
            SizedBox(height: 70,),
            Text("Login",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
            SizedBox(height: 20,),
            Text("Bangladesh's most fast growing food delivery app",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
              ),
            ),
            SizedBox(height: 60,),
            LoginField(
              hintText: "Enter Email Address",
              obscureText: false,
              customIcon: Icon(Icons.mail),
            ),
            SizedBox(height: 30,),
            LoginField(
              hintText: "Password",
              obscureText: obscure_text,
              customIcon: Icon(Icons.lock),
              // customSuffixIcon: Icon(Icons.visibility,
              customSuffixIcon: IconButton(
                icon: Icon(Icons.visibility),
                onPressed: (){
                  setState(() {
                    obscure_text=!obscure_text;
                  });
                },
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Checkbox(
                  value: checkbox_value,
                  onChanged: (value) {
                    setState(() {
                      checkbox_value = value!;
                    });
                  },
                ),
                Text("Remember Me"),
                Spacer(),
                Text("Forgot Password"),
              ],
            ),
            SizedBox(height: 50,),
            InkWell(
              onTap: (){
                Get.toNamed('/homepage',arguments: [

                ]);
              },
              child: Container(
                height: 50,
                width: Get.width*0.9,
                child: Center(
                  child: Text("Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),

                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30)
                  )
                ),
              ),
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                Expanded(child: Divider(thickness: 3,)),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Text("Login With"),
                ),
                Expanded(child: Divider(thickness: 3,)),

              ],
            ),
            SizedBox(height: 40,),
            Row(
              children: [
                SizedBox(width: 100,),
                LoginWithSocialMedia(
                  image_address: "/home/sujon/snap/flutter/food_delivery_app/lib/assets/facebook.png",
                ),
                Spacer(),
                LoginWithSocialMedia(
                  image_address: "/home/sujon/snap/flutter/food_delivery_app/lib/assets/google_plus.png",
                ),
                Spacer(),
                LoginWithSocialMedia(
                  image_address: "/home/sujon/snap/flutter/food_delivery_app/lib/assets/twitter.png",
                ),
                SizedBox(width: 100,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
