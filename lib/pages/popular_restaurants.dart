
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'food_item/popular_restaurants_data.dart';

class RestaurentSlider extends StatelessWidget {
  const RestaurentSlider({super.key});

  @override
  Widget build(BuildContext context) {

    PopularRestaurantsData popularRestaurantsData=PopularRestaurantsData();
    List<String> items=popularRestaurantsData.Restaurants_data[0].keys.toList();

    return CarouselSlider.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Column(
            children: [
              InkWell(
                onTap: () {
                  // print(popularRestaurantsData.Restaurants_data[0].keys.toList());

                  Get.toNamed('/poprestaurants',arguments: [
                    popularRestaurantsData.Restaurants_data[0][items[itemIndex]],
                    popularRestaurantsData.Restaurants_data[0][items[itemIndex]][0]['rest_name']

                  ]);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(15)
                      ),
                      color: Colors.yellow,
                      image: DecorationImage(
                          image: AssetImage(
                              // image_items[itemIndex]
                              popularRestaurantsData.Restaurants_data[0][items[itemIndex]][0]['rest_image_address']
                          ),
                          fit: BoxFit.fill
                      )
                  ),
                ),
              ),
              SizedBox(height: 20,),
              // Text(items[itemIndex],
              Text(popularRestaurantsData.Restaurants_data[0][items[itemIndex]][0]['rest_name'],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.blue
              ),
              ),
            ],
          ),
      options: CarouselOptions(
          viewportFraction: 1,
          autoPlayInterval: Duration(seconds: 1),
          scrollDirection: Axis.horizontal,
          enableInfiniteScroll: false
      ),
    );
  }
}

