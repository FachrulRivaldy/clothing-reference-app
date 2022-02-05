import 'package:clothing_reference_app/pages/cartpage.dart';
import 'package:clothing_reference_app/pages/favoritepage.dart';
import 'package:clothing_reference_app/pages/mainMenu.dart';
import 'package:clothing_reference_app/pages/profilepage.dart';
import 'package:clothing_reference_app/pages/searchpage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;

  final screens = const [
    MainMenu(),
    FavoritePage(),
    SearchTabBar(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.home, size: 30),
      const Icon(Icons.favorite, size: 30),
      const Icon(Icons.search, size: 30),
      const Icon(Icons.shopping_cart, size: 30),
      const Icon(Icons.account_circle, size: 30),
    ];

    return Scaffold(
      // appBar: ,
      body: screens[index],
      // extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        key: navigationKey,
        buttonBackgroundColor: const Color(0xFFB7A599),
        backgroundColor: Colors.white,
        height: 55,
        color: const Color(0xFFE7E3E2),
        items: items,
        index: index,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) => setState(() => this.index = index),
      ),
    );
  }
}
