import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ItemWiseFoodDetaile extends StatelessWidget {
  const ItemWiseFoodDetaile({super.key});

  @override
  Widget build(BuildContext context) {
    var argument=Get.arguments;
    var title=argument[1];
    var total_item=argument[2];
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: total_item,
          itemBuilder: (BuildContext context, int index){
            var restraunt_name=argument[0][index]['restraunt_name'];
            var image_address=argument[0][index]['image_url'];
            var rating=argument[0][index]['rating'];
            var item_name=argument[0][index]['item_name'];
            var price=argument[0][index]['price'];
            var description=argument[0][index]['description'];
            var ingredient=argument[0][index]['ingredient'];
            var add_ons=argument[0][index]['add_ons'];
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 10,),
              InkWell(
                onTap: () {
                  Get.toNamed('/fooddetails',
                  arguments: [
                    image_address,
                    item_name,
                    price,
                    description,
                    ingredient,
                    add_ons
                  ]
                  );
                },
                child: Container(
                width: Get.width*0.9,
                height: Get.height*0.18,
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
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    children: [
                      Text(restraunt_name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                      ),
                      Spacer(),
                      Icon(Icons.star,
                      size: 20,
                        color: Colors.green,
                      ),
                      Text(rating.toString()),

                    ],
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          );
          }),
    );
  }
}
