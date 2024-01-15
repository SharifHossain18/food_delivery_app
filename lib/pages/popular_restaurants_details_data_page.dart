import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../custom_widget/custom_popular_restaurants.dart';
import 'bottom_navigation/cart_page.dart';

class PopularRestaurantsDataPage extends StatelessWidget {
  const PopularRestaurantsDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    var argument=Get.arguments[0][0];
    var rating=argument['rating'].toString();
    var address=argument['address'];
    var distance=argument['distance'];
    var Pick_Up=argument['Pick-Up'];
    var food_item=argument['food_item'].keys.toList();
    var restaurants_name=Get.arguments[1];

    return Scaffold(
      appBar: AppBar(
        title: Text("Popular Restaurants"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text("$restaurants_name ($address)",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Text(distance,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400
              ),

              ),
            ],
          ),
          SizedBox(height: 10,),
          CustomPopularRestaurantsText(
            custom_icon: Icon(Icons.star,
            color: Colors.red,
            ),
            custom_text: rating,
          ),
          SizedBox(height: 10,),
          CustomPopularRestaurantsText(
            custom_icon: Icon(Icons.timelapse,
              color: Colors.red,
            ),
            custom_text: Pick_Up,
          ),
          SizedBox(height: 10,),
          CustomPopularRestaurantsText(
            custom_icon: Icon(Icons.directions,
              color: Colors.red,
            ),
            custom_text: address,
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Icon(Icons.favorite,
                  color: Colors.yellow[800],
                ),
                SizedBox(width: 10,),
                Text("Popular",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28
                ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20,bottom: 20),
            child: Row(
              children: [
                Text("Most ordered right now",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: food_item.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ), itemBuilder: (BuildContext context, int index){
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 200,
                      width: 300,
                      child: Stack(

                        children: [
                          Positioned(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(food_item[index],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 180, top: 200),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                                ),
                                color: Colors.white
                              ),
                              height: 20,
                              width: 400,
                              child: Center(
                                child: Text(argument['food_item'][food_item[index]][0]['price'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20
                                ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      // child: Text(argument['food_item'][food_item[index]][0]['image_url']),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15)
                        ),
                        color: Colors.red,
                        image: DecorationImage(
                          image: AssetImage(
                              argument['food_item'][food_item[index]][0]['image_url'],
                          ),
                          fit: BoxFit.fill
                        )
                      ),

                    ),
                  );
            }),
          ),
          InkWell(
            onTap: (){
              Get.to(CartPage());
            },
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.circle_outlined,
                    color: Colors.white,
                    ),
                    Spacer(),
                    Text("View Your Cart",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                    ),
                    ),
                    Spacer(),
                    Text("Tk 700",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),
              height: 50,
              width: Get.width*0.9,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
