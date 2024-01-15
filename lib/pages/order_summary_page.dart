import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/payment_method_page.dart';
import 'package:get/get.dart';

import '../custom_widget/custom_button.dart';
import '../custom_widget/custom_title.dart';


class OrderSummaryPage extends StatelessWidget {
  const OrderSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    var argument=Get.arguments;
    var item_name=argument[0];
    var price=argument[1];
    var grand_total=argument[2];
    return Scaffold(
      appBar: AppBar(
        title: Text("Summary"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Center(
              child: Container(
                height: Get.height*0.4,
                width: Get.width*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15)
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                        "/home/sujon/snap/flutter/food_delivery_app/lib/assets/payment.png"
                    ),
                    fit: BoxFit.fill
                  ),
                )
              ),
            ),
            SizedBox(height: 10,),
            CustomTitleText(titleText: "Order Summary",),
            SizedBox(height: 10,),
            //Listview Builder

            Flexible(
              fit: FlexFit.tight,
              child: ListView.builder(
                itemCount: item_name.length,
                  itemBuilder: (BuildContext context,int index){
                  return ListTile(
                    title: Text(item_name[index],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                     ),
                    ),
                    trailing: Text("${price[index]} TK",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text("Grand Total ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.green
                  ),

                  ),
                  Spacer(),
                  Text("$grand_total Tk",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.green
                    ),

                  ),
                ],
              ),
            ),
            SizedBox(height: 100,),

            InkWell(
              onTap: () {
                Get.toNamed('/paymentmethod',
                  arguments: [
                    item_name,
                    grand_total
                  ]
                );
              },
              child: CustomOrderButton(
                button_text: "Payment Method",
              ),
            ),
            SizedBox(height: 50,),

          ],
        ),
      ),
    );
  }
}
