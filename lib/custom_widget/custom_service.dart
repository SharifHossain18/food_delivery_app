import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../pages/food_item/cuisines_food_details.dart';


class CustomService extends StatelessWidget {
 final String title;
 final String subtitle;
 final String imageaddress;

  const CustomService({super.key,
  required this.title,
  required this.subtitle,
  required this.imageaddress,
  });


  @override
  Widget build(BuildContext context) {
    FoodImageList foodImageList=FoodImageList();
    return InkWell(
      onTap: () {
        if(title=="Food delivery" || title=="Pick Up" || title=="Dine in"){
          print(foodImageList.All_food_image_list[0]['Pizza'][0]['image_url']);
          print(title);
          Get.toNamed("/fooddelivery",arguments: [
            foodImageList.All_food_image_list[0],
            title
          ]
          );
        }
         else if(title=="Express Food"){
          Get.toNamed("/express",arguments: [
            title
          ]
          );
        }


      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)
            
          )
        ),
        elevation: 50,
        child: Container(
          height: Get.height*0.2,
          width: Get.width*0.4,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20)
            )
          ),
          child: Stack(
            children: [
              Positioned(
                left: 20,
                  top: 20,
                  child: Text(title.toString(),
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                  ),
              ),
              Positioned(
                left: 20,
                top: 45,
                child: Text(subtitle,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal
                  ),
                ),
              ),

              Positioned(
                height: Get.height*0.1,
                width: Get.width*0.2,
                // right: 0,
                bottom: 5,
                right: 5,
                child: Image.asset(
                  imageaddress,
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
