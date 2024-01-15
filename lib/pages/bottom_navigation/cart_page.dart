import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widget/global_variable.dart';
import 'package:food_delivery_app/pages/bottom_navigation/constants_page.dart';
import 'package:food_delivery_app/pages/bottom_navigation/test_cart.dart';
import 'package:food_delivery_app/pages/order_summary_page.dart';
import 'package:food_delivery_app/pages/payment_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:collection/collection.dart';

import '../payment_method_page.dart';

class CartPage extends StatefulWidget {
   CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  num sum=0;
  num shipping_charge=0;
  num grand_total=0;
  int total=0;

  void increment(int counter,int index){
    setState(() {
      counter=counter+1;
      cart_item_count[index]=counter;
      item_wise_total_price[index]=cart_item_count[index]*int.parse(price_list[index]);

    });
  }
  void decrement(int counter,int index){
    setState(() {
      if(counter>0){
        counter--;
        cart_item_count[index]=counter;
        item_wise_total_price[index]=cart_item_count[index]*int.parse(price_list[index]);
      }
      else{
        counter=0;
        cart_item_count[index]=counter;
        item_wise_total_price[index]=cart_item_count[index]*int.parse(price_list[index]);
      }
    });
  }
  void sub_total(){
    setState(() {
      num summ=0;
      for (var i in item_wise_total_price){
       summ+=i;
       sum=summ;
       shipping_charge=sum*0.05;
       grand_total=sum+shipping_charge;
      }

    });
  }
  void ItemWiseTotal(){

    setState(() {

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: image_url.length,
                  itemBuilder: (BuildContext context,int index){
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20)
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            width: Get.width*0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20)
                              ),
                              image: DecorationImage(
                                image: AssetImage(
                                  image_url[index]
                                ),
                                  fit: BoxFit.fill
                           )
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  SizedBox(width: 20,),
                                  Text(item_food_name[index],
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.pink,
                                    fontWeight: FontWeight.w500
                                  ),

                                  ),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  SizedBox(width: 20,),
                                  Text("${cart_item_count[index]*int.parse(price_list[index])} Tk"),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 250,),
                                  InkWell(
                                    onTap: (){
                                      increment(cart_item_count[index],index);
                                      sub_total();
                                      ItemWiseTotal();
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 20,
                                      width: 20,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 30,
                                  child: Center(child: Text(cart_item_count[index].toString())),
                                  ),
                                  InkWell(
                                    onTap: (){
                                      decrement(cart_item_count[index],index);
                                      sub_total();
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 20,
                                      width: 20,
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.red,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
              ),
            SizedBox(height: 50,),
            Row(
              children: [
                Text("Sub total",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
                ),
                ),
                Spacer(),
                Text("${sum.toString()} Tk",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("Shipping",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black
                  ),
                ),
                Spacer(),
                Text("40 Tk",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("Tax(5%)",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black
                  ),
                ),
                Spacer(),
                Text("${shipping_charge.toString()} Tk",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("Grand Total",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black
                  ),
                ),
                Spacer(),
                Text("${grand_total.toString()} Tk",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black
                  ),
                ),
              ],
            ),
            SizedBox(height: 200,),
            InkWell(
              onTap: () {
                Get.toNamed('/ordSum',arguments: [
                  item_food_name,
                  item_wise_total_price,
                  grand_total

                ]);
              },
              child: Container(
                height: 80,
                width: Get.width*0.8,
                child: Center(
                  child: Text("Place Order",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35
                  ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20)
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

