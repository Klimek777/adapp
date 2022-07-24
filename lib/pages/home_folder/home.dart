// ignore_for_file: unnecessary_const

import 'package:adapp/pages/add_folder/add.dart';
import 'package:adapp/pages/mealplan_folder/mealplan.dart';
import 'package:adapp/pages/recipes_folder/recipes.dart';
import 'package:adapp/pages/shoplist_folder/shoplist.dart';
import 'package:adapp/pages/today_folder/today.dart';
import 'package:adapp/widgets/shopping_list_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int _currentIndex = 0;
  final List _children = [
    TodayPage(),
    MealplanPage(),
    AddPage(),
    ShoplistPage(),
    RecipesPage()
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomNavigationBar(
            onTap: onTabTapped,
            currentIndex: _currentIndex,
            backgroundColor: Colors.grey[100],
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.black,
            selectedLabelStyle: const TextStyle(
              color: Colors.pinkAccent,
            ),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            unselectedLabelStyle: const TextStyle(
              color: Colors.black,
            ),
            selectedIconTheme: const IconThemeData(color: Colors.black),
            unselectedItemColor: Colors.black,
            items: [
              const BottomNavigationBarItem(
                  icon: Icon(Icons.wb_sunny_outlined), label: 'Today'),
              const BottomNavigationBarItem(
                  icon: const Icon(Icons.menu_book_outlined),
                  label: 'Meal Plan'),
              BottomNavigationBarItem(
                icon: Container(
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: const Icon(
                    Icons.add,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                label: '',
              ),
              const BottomNavigationBarItem(
                  icon: const Icon(Icons.shopping_cart_outlined),
                  label: 'Shop List'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.soup_kitchen), label: 'Recipes'),
            ]),
      ),
    );
  }
}
