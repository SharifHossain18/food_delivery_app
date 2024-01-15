import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../custom_widget/custom_profile_page_field.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Profile",
        style: TextStyle(
          color: Colors.red
        ),
        ),
      ),
      body: Column(
        children: [
          Spacer(),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                )
            ),
            child: Container(
              height: Get.height*0.7,
              width: Get.width,
              decoration: BoxDecoration(
              ),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                  "/home/sujon/snap/flutter/food_delivery_app/lib/assets/profile.png"

                              ),
                              fit: BoxFit.fill
                            )
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60,),
                  CustomProfilePageField(
                    image_address: "/home/sujon/snap/flutter/food_delivery_app/lib/assets/email.jpeg",
                    title_text: "Email",
                    field_text: "dewaan.sharif@gmail.com",
                  ),
                  CustomProfilePageField(
                    image_address: "/home/sujon/snap/flutter/food_delivery_app/lib/assets/address.png",
                    title_text: "Address",
                    field_text: "",
                  ),
                  CustomProfilePageField(
                    image_address: "/home/sujon/snap/flutter/food_delivery_app/lib/assets/phone.png",
                    title_text: "Phone",
                    field_text: "",
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Row(
                      children: [
                        ProfilePageCustomButtom(
                          title_text: "MY WISHLIST",
                        ),
                        Spacer(),
                        ProfilePageCustomButtom(
                          title_text: "My ORDERS",
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
