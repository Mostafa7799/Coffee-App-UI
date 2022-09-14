import 'package:coffee_app_ui/core/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  HomeScreen(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.bottomBarColor,
        unselectedItemColor: AppColors.grayColor,
        selectedItemColor: AppColors.mainColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        onTap: (value){

        },
        items: const[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorites"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart),
              label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              label: "Profile"),
        ],
      ),
    );
  }
}
