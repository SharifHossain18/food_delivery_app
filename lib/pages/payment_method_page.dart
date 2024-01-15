import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../custom_widget/custom_button.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({super.key});

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  String selected_method='Bkash';
  @override
  Widget build(BuildContext context) {
    var argument=Get.arguments;
    var item_name=argument[0];
    var price=argument[1];
    List image_list=[
      {
        'Bkash':'/home/sujon/snap/flutter/food_delivery_app/lib/assets/bkash.png',
        'Nagad':'/home/sujon/snap/flutter/food_delivery_app/lib/assets/nagad.png',
        'Rocket':'/home/sujon/snap/flutter/food_delivery_app/lib/assets/rocket.png',
        'Upay':'/home/sujon/snap/flutter/food_delivery_app/lib/assets/upay.png',
        'Credit_Card':'/home/sujon/snap/flutter/food_delivery_app/lib/assets/credit_card.png',
        'Cash':'/home/sujon/snap/flutter/food_delivery_app/lib/assets/cash.png',
      }
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Method"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "/home/sujon/snap/flutter/food_delivery_app/lib/assets/bkash.png"
                    ),
                  )
                ),
              ),
              title: Text("Bkash"),
              trailing: Radio(
                value: "Bkash",
                groupValue: selected_method,
                onChanged: (value) {
                  setState(() {
                    selected_method=value!;
                  });
                },
              ),
            ),
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "/home/sujon/snap/flutter/food_delivery_app/lib/assets/nagad.png"
                      ),
                    )
                ),
              ),
              title: Text("Nagad"),
              trailing: Radio(
                value: "Nagad",
                groupValue: selected_method,
                onChanged: (value) {
                  setState(() {
                    selected_method=value!;
                  });
                },
              ),
            ),
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "/home/sujon/snap/flutter/food_delivery_app/lib/assets/rocket.png"
                      ),
                    )
                ),
              ),
              title: Text("Rocket"),
              trailing: Radio(
                value: "Rocket",
                groupValue: selected_method,
                onChanged: (value) {
                  setState(() {
                    selected_method=value!;
                  });
                },
              ),
            ),
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "/home/sujon/snap/flutter/food_delivery_app/lib/assets/upay.png"
                      ),
                    )
                ),
              ),
              title: Text("Upay"),
              trailing: Radio(
                value: "Upay",
                groupValue: selected_method,
                onChanged: (value) {
                  setState(() {
                    selected_method=value!;
                  });
                },
              ),
            ),
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "/home/sujon/snap/flutter/food_delivery_app/lib/assets/credit_card.png"
                      ),
                    )
                ),
              ),
              title: Text("Credit Card"),
              trailing: Radio(
                value: "Credit_Card",
                groupValue: selected_method,
                onChanged: (value) {
                  setState(() {
                    selected_method=value!;
                  });
                },
              ),
            ),
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "/home/sujon/snap/flutter/food_delivery_app/lib/assets/cash.png"
                      ),
                    )
                ),
              ),
              title: Text("Cash"),
              trailing: Radio(
                value: "Cash",
                groupValue: selected_method,
                onChanged: (value) {
                  setState(() {
                    selected_method=value!;
                  });
                },
              ),
            ),
            SizedBox(height: Get.height*0.2,),
            InkWell(
              onTap: () {
                print(image_list[0][selected_method]);
                Get.toNamed('/payment',
                arguments: [
                  image_list[0][selected_method],
                  price,
                  selected_method,


                ]
                );
              },
              child: CustomOrderButton(
                button_text: "Proceed",
              ),
            ),
            SizedBox(height: Get.height*0.1,),
          ],
        ),
      ),
    );
  }
}




