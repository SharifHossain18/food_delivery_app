import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/home_page.dart';
import 'package:food_delivery_app/pages/login/login_page.dart';
import 'package:get/get.dart';

import '../pages/bottom_navigation/cart_page.dart';
import '../pages/bottom_navigation/categories_page.dart';
import '../pages/bottom_navigation/profile_page.dart';
import '../pages/bottom_navigation/search_page.dart';
import '../pages/food_services/express_food.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _selectedIndex = 0;
  List pages=[HomePage(),SearchPage(),CategoriesPage(),CartPage(),ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category_sharp),
          label: "Category",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.card_travel,
          ),
          label: "Cart",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail,
          ),
          label: "Profile",
        ),
      ],
        unselectedLabelStyle: TextStyle(fontSize: 15),
        unselectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(fontSize: 22),
        selectedFontSize: 26,
        selectedItemColor: Colors.red,
      onTap: (value) {
       setState(() {
         _selectedIndex=value;
         print(_selectedIndex);
          Get.to(pages[_selectedIndex]);
       });
      },

      );
  }
}

