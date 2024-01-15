import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../food_pages/individual_food_details.dart';

class FoodServices extends StatelessWidget {
  const FoodServices({super.key});

  @override
  Widget build(BuildContext context) {
    var argument=Get.arguments[0];
    List food_items=argument.keys.toList();
    var title=Get.arguments[1];

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: food_items.length,
              itemBuilder: (BuildContext context,int index){
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: argument[food_items[index]].length,
                    itemBuilder: (BuildContext context,int indexes){
                      var restraunt_name=argument[food_items[index]][indexes]['restraunt_name'];
                      var image_address=argument[food_items[index]][indexes]['image_url'];
                      var rating=argument[food_items[index]][indexes]['rating'];
                      var item_name=argument[food_items[index]][indexes]['item_name'];
                      var price=argument[food_items[index]][indexes]['price'];
                      var description=argument[food_items[index]][indexes]['description'];
                      var ingredient=argument[food_items[index]][indexes]['ingredient'];
                      var add_ons=argument[food_items[index]][indexes]['add_ons'];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            InkWell(
                              onTap:(){
                                  Get.toNamed('/fooddetails',arguments: [
                                    image_address,
                                    item_name,
                                    price,
                                    description,
                                    ingredient,
                                    add_ons
                                  ]);


                              },
                              child: Container(
                                height: 200,
                                width: Get.width*0.9,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20)
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            argument[food_items[index]][indexes]['image_url']
                                        ),
                                        fit: BoxFit.fill
                                    ),
                                    color: Colors.red
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20,top: 10),
                              child: Row(
                                children: [
                                  Text(argument[food_items[index]][indexes]['restraunt_name'],
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87
                                  ),
                                  ),
                                  Spacer(),
                                  Icon(Icons.star,
                                  color: Colors.blue,
                                  ),
                                  Text(argument[food_items[index]][indexes]['rating'].toString(),
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500
                                  ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: [
                                  Text(argument[food_items[index]][indexes]['item_name'],
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue
                                  ),

                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      );
                    });
              })
        ],
      ),
    );
  }
}
