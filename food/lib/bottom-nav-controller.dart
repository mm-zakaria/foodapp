import 'package:flutter/material.dart';
import 'package:food/pages/account.dart';
import 'package:food/pages/add.dart';
import 'package:food/pages/chat.dart';
import 'package:food/pages/home.dart';
import 'package:food/pages/my_ads.dart';

class BottonNavController extends StatefulWidget {
  BottonNavController({super.key});

  @override
  State<BottonNavController> createState() => _BottonNavControllerState();
}

class _BottonNavControllerState extends State<BottonNavController> {
  int _currentIndex = 0;

  final _pages = [
    Home(),
    MyAds(),
    Add(),
    Chat(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        elevation: 5,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.purple,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_basket_outlined,
              ),
              label: 'My ads'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline,
              ),
              label: 'add'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
              ),
              label: 'chat'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Account'),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
