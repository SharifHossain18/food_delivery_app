import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/home_page.dart';
import 'package:get/get.dart';

class OrderCompletedPage extends StatelessWidget {
  const OrderCompletedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            
            children: [
              Text("Congratulations",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.yellow
              ),
              ),
              SizedBox(height: 20,),
              Text("Your Order is Completed",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 300,
                width: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "/home/sujon/snap/flutter/food_delivery_app/lib/assets/completed.png"
                      ),
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(10)
                    )
                ),
              ),
              SizedBox(height: 100,),
              Text("20-25 mins",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.yellow
                ),
              ),
              SizedBox(height: 20,),
              Text("Estimated Serving Time",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 150,),
              InkWell(
                onTap: () {
                  Get.to(HomePage());
                },
                child: Container(
                  height: 50,
                  width: 300,
                  child: Center(
                    child: Text("Back To Menu",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),

                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10)
                    )
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
