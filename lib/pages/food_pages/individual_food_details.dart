import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widget/global_variable.dart';
import 'package:food_delivery_app/pages/bottom_navigation/cart_page.dart';
import 'package:food_delivery_app/pages/bottom_navigation/test_cart.dart';
import 'package:get/get.dart';
import '../../custom_widget/Custom_add_ons.dart';
import '../../custom_widget/custom_button.dart';
import '../../custom_widget/custom_radio_buttom.dart';
import '../../custom_widget/custom_shape.dart';
import '../../custom_widget/custom_title.dart';
import '../bottom_navigation/constants_page.dart';



class IndividualFoodDetailsPage extends StatefulWidget {
  const IndividualFoodDetailsPage({super.key});

  @override
  State<IndividualFoodDetailsPage> createState() => _IndividualFoodDetailsPageState();
}

class _IndividualFoodDetailsPageState extends State<IndividualFoodDetailsPage> {
  @override
  Widget build(BuildContext context) {
    var argument=Get.arguments;
    var image_address=argument[0];
    var item_name=argument[1];
    var price=argument[2];
    var description=argument[3];
    var ingredients=argument[4];
    var add_ons=argument[5];

    return Scaffold(
      appBar: AppBar(
        title: Text("Food Details"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  print(argument);
                },
                child: Container(
                  width: Get.width*0.9,
                  height: Get.height*0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20)
                    ),
                      image: DecorationImage(
                          image: AssetImage(
                            image_address,
                          ),
                          fit: BoxFit.fill
                      )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  CustomTitleText(titleText: item_name),
                  Spacer(),
                  CustomTitleText(titleText: "$price Tk"),
                ],
              ),
              SizedBox(height: 20,),
              CustomTitleText(titleText: "Description",),
              SizedBox(height: 10,),
              Text(description),
              SizedBox(height: 10,),
              CustomTitleText(titleText: "Ingredients",),
              Expanded(
                child: ListView.builder(
                    itemCount: ingredients.length,
                    itemBuilder: (BuildContext context, int index){
                      return ListTile(
                        dense: true,
                        horizontalTitleGap: -20,
                        visualDensity: VisualDensity(vertical: -4, horizontal: -4),
                        leading: CustomBulletShape(),
                        title: Text(ingredients[index],
                        style: TextStyle(
                          fontSize: 14
                        ),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 10,),
              CustomTitleText(titleText: "Spicy Level",),
              CustomSpiceLevel(),
              SizedBox(height: 200,
              child: Column(
                children: [
                  CustomTitleText(titleText: "Add Ons",),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      CustomAddOns(
                        image_address: add_ons[0],
                      ),
                      Spacer(),
                      CustomAddOns(
                        image_address: add_ons[1],
                      ),
                      Spacer(),
                      CustomAddOns(
                        image_address: add_ons[2],
                      )
                    ],
                  )
                ],
              ),
              ),

              InkWell(
                onTap: () {
                  Get.toNamed('/payment',arguments: [
                    item_name,
                    price
                  ]);
                },
                child: InkWell(
                  onTap: () {
                    Get.toNamed('/ordSum',arguments: [
                      item_name,
                      price
                    ]);
                  },
                  child: CustomOrderButton(
                    button_text: "Order",
                  ),
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  price_list.add(price);
                  image_url.add(image_address);
                  item_food_name.add(item_name);
                  cart_item_count.add(0.toInt());
                  item_wise_total_price.add(price);
                  Get.toNamed('/cart',arguments: [
                  ]);
                },
                child: CustomOrderButton(
                  button_text: "Add to Cart",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
