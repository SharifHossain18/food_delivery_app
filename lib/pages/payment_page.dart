import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math';

import 'order_completion_page.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    var argument=Get.arguments;
    var payment_company_logo=argument[0];
    var price=argument[1];
    var payment_company_name=argument[2];
    var number=Random().nextInt(1598620954);
    return Scaffold(
      backgroundColor: Colors.green[400],
      body: Column(
        children: [
          SizedBox(height: 100,),
          Row(
            children: [
              Spacer(),
              Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                    // color: Colors.yellow,
                  image: DecorationImage(
                    image: AssetImage(
                      "/home/sujon/snap/flutter/food_delivery_app/lib/assets/food_express.png"
                    ),
                    // fit: BoxFit.fill
                  )
                ),
              ),
              Spacer()
            ],
          ),
          Text("Food Express Bangladesh",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),

          ),
          SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Text("Invoice No: SR${number.toString()}",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Text("Total Amount : BDT $price",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Text("Charge: 0 Tk",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Spacer(),
                Text("Your $payment_company_name Account Number",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                Spacer()
              ],
            ),
          ),
          SizedBox(
            width: Get.width*0.9,
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10)
                  )
                ),
                labelText: "Account Number",
                labelStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.black
                ),
                hintText: "Account Number",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: Text("By clicking/tapping 'Proceed' you are agreeing to our terms and conditions ",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40,),
          Row(
            children: [
              Spacer(),
              InkWell(
                onTap: () {
                  Get.to(OrderCompletedPage());
                },
                child: Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6)
                    ),
                    color: Colors.white
                  ),
                  child: Center(child: Text("Proceed",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                  )),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(6)
                      ),
                      color: Colors.white
                  ),
                  child: Center(child: Text("Close",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                  )),
                ),
              ),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                  // color: Colors.yellow,
                    image: DecorationImage(
                      image: AssetImage(
                          payment_company_logo
                      ),
                      // fit: BoxFit.fill
                    )
                ),
              ),
              Spacer()
            ],
          ),

        ],
      ),
    );
  }
}
