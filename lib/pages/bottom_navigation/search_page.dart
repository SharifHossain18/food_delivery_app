import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 2,),
            Card(
              elevation: 20,
              child: Row(
                    children: [
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: IconButton(
                          icon: Icon(Icons.arrow_back),
                            onPressed: (){
                            Get.back();
                            },
                          ),
                            hintText: "Search Products",
                            hintStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300
                            )
                        ),
                      )),
                      Icon(Icons.camera_enhance),
                      SizedBox(width: 20,),
                      Icon(Icons.mic),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text("Seach By Scanning",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),

                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  height: 40,
                  width: Get.width*0.4,
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          image: DecorationImage(
                            image: AssetImage(
                                "/home/sujon/snap/flutter/food_delivery_app/lib/assets/scan_image.jpeg"
                            ),
                            fit: BoxFit.fill
                          )
                        ),
                      ),
                      SizedBox(width: 20,),
                      Text("Scan with image",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black
                      ),
                      )
                    ],
                  ),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border: Border.all(

                    )
                  ),
                ),
                Spacer(),
                Container(
                  height: 40,
                  width: Get.width*0.4,
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            image: DecorationImage(
                                image: AssetImage(
                                    "/home/sujon/snap/flutter/food_delivery_app/lib/assets/scan_image.jpeg"
                                ),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                      SizedBox(width: 20,),
                      Text("Scan with text",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black
                        ),

                      )

                    ],
                  ),

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(

                      )
                  ),
                )
              ],
            )
               ]
              ),
          ),


          );

  }
}
