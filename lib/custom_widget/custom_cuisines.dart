
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/food_item/cuisines_food_details.dart';

class FoodSlider extends StatelessWidget {
  const FoodSlider({super.key});

  @override
  Widget build(BuildContext context) {
    FoodImageList foodImageList=FoodImageList();
    List<String> items=['Pizza','Burger','Pasta','Soups','Ice Cream','Shawarma'];
    List image_items=['/home/sujon/snap/flutter/food_delivery_app/lib/assets/pizza.jpeg',
      '/home/sujon/snap/flutter/food_delivery_app/lib/assets/burger.jpeg',
      '/home/sujon/snap/flutter/food_delivery_app/lib/assets/pasta.jpg',
      '/home/sujon/snap/flutter/food_delivery_app/lib/assets/soup.jpeg',
      '/home/sujon/snap/flutter/food_delivery_app/lib/assets/ice_cream.jpeg',
      '/home/sujon/snap/flutter/food_delivery_app/lib/assets/kebab.jpeg',
      '/home/sujon/snap/flutter/food_delivery_app/lib/assets/shawarma.jpeg'
    ];

    return CarouselSlider.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Column(
            children: [
              InkWell(
                onTap: () {
                  print(foodImageList.All_food_image_list[0][items[itemIndex]][0]['add_ons']);
                  var total_item=foodImageList.All_food_image_list[0][items[itemIndex]].length;
                  Get.toNamed("/cuisines",
                    arguments: [
                      foodImageList.All_food_image_list[0][items[itemIndex]],
                      items[itemIndex],
                      total_item
                    ],
                  );
                },
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(15)
                      ),
                      color: Colors.yellow,
                      image: DecorationImage(
                          image: AssetImage(
                              image_items[itemIndex]
                          ),
                          fit: BoxFit.fill
                      )
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text(items[itemIndex],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black
                ),

              ),
            ],
          ),
      options: CarouselOptions(
          viewportFraction: 0.2,
          autoPlayInterval: Duration(seconds: 1),
          scrollDirection: Axis.horizontal,
        enableInfiniteScroll: false,
        initialPage: 2,

      ),

    );
  }
}
