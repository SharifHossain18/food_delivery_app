import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/popular_restaurants.dart';
import '../custom_widget/bottom_navaigation_bar.dart';
import '../custom_widget/custom_appbar.dart';
import '../custom_widget/custom_cuisines.dart';
import '../custom_widget/custom_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CustomAppBar("Food Express"),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 20,),
                CustomService(
                  title: "Food delivery",
                  subtitle: "Order food you love",
                  imageaddress: "/home/sujon/snap/flutter/food_delivery_app/lib/assets/food_delivery.jpg",
                ),
                Spacer(),
                CustomService(
                  title: "Pick Up",
                  subtitle: "Self collect in 20 mins",
                  imageaddress: "/home/sujon/snap/flutter/food_delivery_app/lib/assets/food_pickup.png",
                ),
                SizedBox(width: 20,),

              ],
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                CustomService(
                  title: "Dine in",
                  subtitle: "Go out to eat",
                  imageaddress: "/home/sujon/snap/flutter/food_delivery_app/lib/assets/dine_in.png",
                ),
                Spacer(),
                CustomService(
                  title: "Express Food",
                  subtitle: "Send Parcel",
                  imageaddress: "/home/sujon/snap/flutter/food_delivery_app/lib/assets/food_parcel.png",
                ),
                SizedBox(width: 20,),
              ],
            ),
            SizedBox(height: 20,),
            // FoodSlider(),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text("Popular Restaurants",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            RestaurentSlider(),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text("Cuisines",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            FoodSlider(),
            BottomNavigationPage(),
          ],
        ),

      ),

    );
  }
}
