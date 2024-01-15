import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/bottom_navigation/cart_page.dart';
import 'package:food_delivery_app/pages/food_pages/cuisines_food_details_page.dart';
import 'package:food_delivery_app/pages/food_pages/individual_food_details.dart';
import 'package:food_delivery_app/pages/food_services/express_food.dart';
import 'package:food_delivery_app/pages/food_services/food_service.dart';
import 'package:food_delivery_app/pages/home_page.dart';
import 'package:food_delivery_app/pages/login/login_page.dart';
import 'package:food_delivery_app/pages/order_summary_page.dart';
import 'package:food_delivery_app/pages/payment_method_page.dart';
import 'package:food_delivery_app/pages/payment_page.dart';
import 'package:food_delivery_app/pages/popular_restaurants_details_data_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


void main() async{
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MySavingApp(),
        initialRoute: '/',
        getPages: [
            GetPage(name: '/', page: () => LoginPage()),
            GetPage(name: '/homepage', page: () => HomePage()),
            GetPage(name: '/fooddelivery', page: () => FoodServices()),
            GetPage(name: '/express', page: () => FoodExpress()),
            GetPage(name: '/cuisines', page: () => ItemWiseFoodDetaile()),
            GetPage(name: '/fooddetails', page: () => IndividualFoodDetailsPage()),
            GetPage(name: '/ordSum', page: () => OrderSummaryPage()),
            GetPage(name: '/paymentmethod', page: () => PaymentMethodPage()),
            GetPage(name: '/payment', page: () => PaymentPage()),
            GetPage(name: '/poprestaurants', page: () => PopularRestaurantsDataPage()),
            GetPage(name: '/cart', page: () => CartPage()),


    ]
            );
  }
}

