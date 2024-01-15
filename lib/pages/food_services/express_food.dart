import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../custom_widget/custom_popup.dart';

class FoodExpress extends StatefulWidget {
   FoodExpress({super.key});

  @override
  State<FoodExpress> createState() => _FoodExpressState();
}

class _FoodExpressState extends State<FoodExpress> {
  TextEditingController senderaddress=TextEditingController();
  TextEditingController receiveraddress=TextEditingController();
  String delivery_from='Add Sender Address:';
  String delivery_to='Add Recipient Address:';

  @override
  Widget build(BuildContext context) {
    var  argument=Get.arguments[0];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(argument),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Text("Express Go",
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
                ),
              ],
            ),
            Row(
              children: [
                Text("Send or receive a parcel in minutes",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20)
                )
              ),
              child: Container(
                height: Get.height*0.3,
                width: Get.width*0.9,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20,bottom: 10,right: 20),
                      child: Row(
                        children: [
                          Text("Collect From:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.black
                          ),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context){
                                    return AlertDialog(
                                      title: Text("Enter Address"),
                                      actions: [
                                        TextField(
                                          autofocus: true,
                                          controller: senderaddress,
                                        ),
                                        SizedBox(height: 10,),
                                        TextButton(
                                          // color: Colors.black,
                                          onPressed: () {
                                            setState(() {
                                              delivery_from=senderaddress.text;
                                              Navigator.of(context).pop();
                                            });
                                          },
                                          child: Text('ACCEPT'),
                                        ),
                                      ],
                                    );
                                  });
                              // CustomPopUpTextField();
                            },
                            child: Icon(Icons.add,
                            color: Colors.pink,
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          // child: Text("Add Sender Address:",
                          child: Text(delivery_from,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.pink
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 50,),
                    Row(
                      children: [
                        Expanded(child: Divider(thickness: 2,)),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20,bottom: 10,right: 20),
                      child: Row(
                        children: [
                          Text("Deliver to:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.black
                            ),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context){
                                    return AlertDialog(
                                      title: Text("Enter Address"),
                                      actions: [
                                        TextField(
                                          autofocus: true,
                                          controller: receiveraddress,

                                        ),
                                        SizedBox(height: 10,),
                                        TextButton(
                                          // color: Colors.black,
                                          onPressed: () {
                                            setState(() {
                                              delivery_to=receiveraddress.text;
                                              Navigator.of(context).pop();
                                            });
                                          },
                                          child: Text('ACCEPT'),
                                        ),
                                      ],

                                    );
                                  });
                              // CustomPopUpTextField();
                            },
                            child: Icon(Icons.add,
                              color: Colors.pink,
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(delivery_to,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.pink
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: [
                  Text("Collection Time",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: Get.width*.9,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "ASAP ",style: TextStyle(
                        fontSize: 16,
                        color: Colors.black
                      ),
                        children: [
                          TextSpan(
                            text: "In 20 minutes",style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          )
                          )
                        ]
                      ),

                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.3
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10)
                )
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 100,
              width: Get.width*0.9,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 10),
                    child: Row(
                      children: [
                        Text("Schedule for later",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 10),
                    child: Row(
                      children: [
                        Text("FLexible price options",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            color: Colors.black
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 10),
                    child: Row(
                      children: [
                        Text("Plan up to 2 days ahead",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            color: Colors.black
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10)
                ),
                border: Border.all(
                  width: 0.3
                ),
              ),
            ),
            SizedBox(height: 20,),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20)
                )
              ),
              elevation: 50,
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: Get.width*0.9,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 60,top: 20),
                          child: Row(
                            children: [
                              Text("20% off up to 40 tk",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.pink,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text("Use code SRARP80 before payment. valid for minimun delivery 80 tk",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),

                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 50,
              width: Get.width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10)
                ),
                color: Colors.pink
              ),
              child: Center(
                child: Text("Add Delivery details",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
