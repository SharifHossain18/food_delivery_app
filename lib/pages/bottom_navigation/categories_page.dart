import 'package:flutter/material.dart';

import '../food_item/cuisines_food_details.dart';

class CategoriesPage extends StatelessWidget {
   CategoriesPage({super.key});

  FoodImageList foodImageList=FoodImageList();
  List  food_categories=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: [
          Icon(Icons.search),
          SizedBox(width: 20,),
          Icon(Icons.card_travel),
          SizedBox(width: 20,)
        ],
        title: Text(
          "Categories"
        ),
      ),
      body: ListView.builder(
          itemCount: foodImageList.All_food_image_list[0].keys.toList().length,
          itemBuilder: (BuildContext context, int index){
            return Column(
              children: [
                ListTile(
                  // title: Text("Cakes $index"),
                  title: Text(foodImageList.All_food_image_list[0].keys.toList()[index]),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                Divider(thickness: 0.5,
                  color: Colors.black,)
              ],
            );

          })

    );
  }
}
