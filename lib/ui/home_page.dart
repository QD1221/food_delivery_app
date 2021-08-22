import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        onTap: (idx) {
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
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Placeholder(),
            ),
            Expanded(
              flex: 20,
              child: Placeholder(),
            ),
          ],
        ),
      ),
    );
  }
}
