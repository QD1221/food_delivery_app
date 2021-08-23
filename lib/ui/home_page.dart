import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/go_out_page.dart';
import 'package:food_delivery_app/ui/grocery_page.dart';
import 'package:food_delivery_app/ui/nutrition_page.dart';
import 'package:food_delivery_app/ui/order_page.dart';
import 'package:food_delivery_app/ui/pro_page.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _tabIndex = 0;

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _tabIndex);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        onTap: (idx) {
          _pageController.jumpToPage(idx);
          setState(() {
            _tabIndex = idx;
          });
        },
        currentIndex: _tabIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(LineIcons.shoppingBag),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.chargingStation),
            label: 'Go Out',
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.alternateShield),
            label: 'Pro',
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.store),
            label: 'Grocery',
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.heart),
            label: 'Nutrition',
          ),
        ],
      ),
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          physics: NeverScrollableScrollPhysics(),
          onPageChanged: (idx){

          },
          children: [
            OrderPage(),
            GoOutPage(),
            ProPage(),
            GroceryPage(),
            NutritionPage(),
          ],
        ),
      ),
    );
  }
}
